class TasksController < ApplicationController

  def create
    Task.create(task_params)
  end

  private

  def task_params
    params.require(:task).permit(:name, :user_id, :description, :project_id, :status_id)
  end
end
