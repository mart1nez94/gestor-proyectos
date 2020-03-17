class ProjectsController < ApplicationController
  before_action :authenticate_user!

  def index
    @projects = Project.projects_by_user(current_user.id)
  end

  def show
    @project = Project.project_by_id(params[:id])
    @tasks = Task.all_tasks(params[:id])
    @tasks_to_do = Task.to_do(params[:id])
    @tasks_doing = Task.doing(params[:id])
    @tasks_done = Task.done(params[:id])
  end
end
