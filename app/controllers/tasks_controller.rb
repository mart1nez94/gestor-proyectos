class TasksController < ApplicationController

  def show
    @task = Task.information(params[:id])
  end

  def create
    Task.create_task(task_params)
  end

  def update
    Task.update_task(params[:id], task_params)
  end

  def destroy
    @task = Task.information(params[:id])
    Task.delete_task(@task.id)
    redirect_to "/projects/#{@task.project_id}"
  end

  private

  def task_params
    params.require(:task).permit(:name, :user_id, :description, :project_id, :task_status_id)
  end
end
