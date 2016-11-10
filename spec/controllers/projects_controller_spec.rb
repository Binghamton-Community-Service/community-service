require 'rails_helper'

FactoryGirl.define do
  factory :project do
  #title "a title"
  #content "hello world"
  end
end

  describe ProjectsController do
    context "GET new" do
      it "assigns a blank project to the view" do
        get :new
        expect(assigns(:project)).to be_a_new(Project)
      end
    end
    
    context "POST create" do
      it "redirects to projects path page flashes a notification" do
        params = {project: {project: Project} }
        post :create, params
        expect(flash[:notice]).to match(/was successfully created.*/)
        expect(response).to redirect_to(projects_path)
      end
    end
    
    context "GET index" do
      it "displays all the community service projects" do
        get :index
        expect(assigns(:projects)).to all(be_a(Project))
      end
    end
end