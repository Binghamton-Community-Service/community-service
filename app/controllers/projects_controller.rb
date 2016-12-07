class ProjectsController < ApplicationController

    def project_params
        params.require(:project).permit(:name, :cause, :description, :geography, :volunteers, :budget, :difficulty)
    end
    
    def index
        
        if params[:clear] == "true"
            session.clear
            
            @projects = Project.all
        else
        
            if !params[:sort] and !params[:search]
                if session[:sort] or session[:search]
                    redirect_to projects_path(:sort => session[:sort], :search => session[:search])
                end
            end
            
            sort = params[:sort]
            searchParams = params[:search]  
         
            session[:sort] = sort unless sort == nil
            session[:search] = searchParams unless searchParams == nil   
            
            eval("@#{session[:sort]}_header = 'hilite'") unless sort == nil   # Highlight the selected column
            ordering = { session[:sort].to_sym => :asc } unless sort == nil   # Sort the selected column
            
            # Return a list of projects based on the selection, if applicable
            if session[:search] != nil and not session[:search] =~ /\s/
                @projects = Project.where(['name LIKE ?', "%#{session[:search]}%"]).order(ordering)
            else
                @projects = Project.all.order(ordering)
            end
        end
        
        @geographies = Project.all_geographies
        @volunteers = Project.all_volunteers
        @difficulties = Project.all_difficulties
        @budgets = Project.all_budgets
        
        
        # session[:sort] = sort unless sort == nil
        # session[:search] = searchParams unless sort == nil

    end
    
    def show
        @id = params[:id] #retrieve project ID from URI
        redirect_to project_path(@id)
    end

    def new
        @project = Project.new
        # default: render 'new' template
    end

    def create
        @project = Project.create(project_params)
        flash[:notice] = "#{@project.name} was successfully created."
        redirect_to projects_path
    end

    # This would help with canceling input in a form
    # def check_cancel
    #     if params[:commit] == "Cancel"
    #         redirect_to projects_path
    #     end
    # end
    
    def edit
        @project = Project.find params[:id]
    end

    def update
        @project = Project.find params[:id]
        @project.update_attributes!(project_params)
        flash[:notice] = "#{@project.name} was successfully updated."
        redirect_to project_path(@project.id)
    end

    def destroy
        @project = Project.find(params[:id])
        @project.destroy
        flash[:notice] = "Project '#{@project.name}' deleted."
        redirect_to projects_path
    end

end
