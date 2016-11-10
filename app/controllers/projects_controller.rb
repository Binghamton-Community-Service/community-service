class ProjectsController < ApplicationController

    def project_params
        params.require(:project).permit(:name, :cause, :description, :geography, :volunteers, :budget, :difficulty)
    end
    
    def index
        sort = params[:sort] || session[:sort]
        case sort
            when 'name'
                @name_header = 'hilite'
            when 'cause'
                @cause_header = 'hilite'
            when 'geography'
                @geography_header = 'hilite'
            when 'volunteers'
                @volunteers_header = 'hilite'
            when 'budget'
                @budget_header = 'hilite'
            when 'difficulty'
                @difficulty_header = 'hilite'
        end
        var_name = "@#{string}_header"  # the '@' is required
        self.instance_variable_set(var_name, 'bar')
        ordering = { sort.to_sym => :asc } unless sort == nil

        @projects = Project.all.order(ordering)
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
