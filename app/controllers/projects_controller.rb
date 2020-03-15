class ProjectsController < ApplicationController
  before_action :authenticate_user!

  def index
    @projects = Project.projects_by_user(current_user.id)
  end

  def show
    @project = Project.project_by_id(params[:id])
  end
end
