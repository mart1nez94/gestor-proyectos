class Task < ApplicationRecord
  belongs_to :project
  belongs_to :user

  def self.information(task_id)
    Task.all.joins(:user).select("tasks.*, users.email").find_by(id: task_id)
  end

  def self.all_tasks(project_id)
    Task.all.joins(:user).where(tasks: {project_id: project_id})
      .select("tasks.*, users.email").order("tasks.updated_at DESC")
  end

  def self.to_do(project_id)
    Task.all.joins(:user).where(tasks: {project_id: project_id, task_status_id: 1})
      .select("tasks.*, users.email").order("tasks.updated_at DESC")
  end

  def self.doing(project_id)
    Task.all.joins(:user).where(tasks: {project_id: project_id, task_status_id: 2})
      .select("tasks.*, users.email").order("tasks.updated_at DESC")
  end

  def self.done(project_id)
    Task.all.joins(:user).where(tasks: {project_id: project_id, task_status_id: 3})
      .select("tasks.*, users.email").order("tasks.updated_at DESC")
  end

  def self.create_task(task_params)
    Task.create!(task_params)
  end

  def self.update_task(task_id, task_params)
    Task.find_by(id: task_id).update(task_params)
  end

  def self.delete_task(task_id)
    Task.find_by(id: task_id).destroy
  end
end
