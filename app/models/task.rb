class Task < ApplicationRecord
  belongs_to :project
  belongs_to :user

  def self.all_tasks(project_id)
    Task.all.where(tasks: {project_id: project_id})
  end

  def self.to_do(project_id)
    Task.all.where(tasks: {project_id: project_id, task_status_id: 1}).order("tasks.created_at DESC")
  end

  def self.doing(project_id)
    Task.all.where(tasks: {project_id: project_id, task_status_id: 2}).order("tasks.created_at DESC")
  end

  def self.done(project_id)
    Task.all.where(tasks: {project_id: project_id, task_status_id: 3}).order("tasks.created_at DESC")
  end

  def self.create(task_params)
    Task.create!(task_params)
  end
end
