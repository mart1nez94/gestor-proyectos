class ProjectsController < ApplicationController
  before_action :authenticate_user!

  def index
    @projects = Project.projects_by_user(current_user.id)
  end
end
