class TasksController < ApplicationController

  def create
    Task.create_task(task_params)
  end

  private

  def task_params
    params.require(:task).permit(:name, :user_id, :description, :project_id, :task_status_id)
  end
end
