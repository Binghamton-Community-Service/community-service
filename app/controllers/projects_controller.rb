class ProjectsController < ApplicationController

    def project_params
        params.require(:project).permit(:name, :cause, :description, :geography, :volunteers, :budget, :difficulty)
    end
    
    def index
        sort = params[:sort] || session[:sort]

        eval("@#{sort}_header = 'hilite'") unless sort == nil   # Highlight the selected column
        ordering = { sort.to_sym => :asc } unless sort == nil   # Sort the selected column

        @geographies = Project.all_geographies
        @volunteers = Project.all_volunteers
        @difficulties = Project.all_difficulties
        @budgets = Project.all_budgets
        @projects = Project.all.order(ordering)     # Return a list of projects based on the selection, if applicable
    end
    
    def show
        @id = params[:id] #retrieve project ID from URI
        @project = Project.find(@id)
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
