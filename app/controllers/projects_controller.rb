class ProjectsController < ApplicationController

    def project_params
        params.require(:project).permit(:name, :cause, :description, :geography, :volunteers, :budget, :difficulty)
    end
    
    def index
        sort = params[:sort] || session[:sort]
        case sort
        when 'name'
          ordering,@name_header = {:name => :asc}, 'hilite'
        when 'cause'
          ordering,@cause_header = {:cause => :asc}, 'hilite'
        when 'geography'
          ordering,@geography_header = {:geography => :asc}, 'hilite'
        when 'volunteers'
          ordering,@volunteers_header = {:volunteers => :asc}, 'hilite'
        when 'budget'
          ordering,@budget_header = {:budget => :asc}, 'hilite'
        when 'difficulty'
          ordering,@difficulty_header = {:difficulty => :asc}, 'hilite'
        end
        @projects = Project.all.order(ordering)
        
    end
    
    def show
        @id = params[:id] #retrieve project ID from URI
        redirect_to project_path(@id)
    end

    def new
        # default: render 'new' template
    end

    def create
        @project = Project.create(project_params)
        flash[:notice] = "#{@project.name} was successfully created."
        redirect_to projects_path
    end

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
