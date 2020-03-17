class Task < ApplicationRecord
  belongs_to :project

  def self.all_tasks(project_id)
    Task.all.where(tasks: {project_id: project_id})
  end

  def self.to_do(project_id)
    Task.all.where(tasks: {project_id: project_id, status_id: 1})
  end

  def self.doing(project_id)
    Task.all.where(tasks: {project_id: project_id, status_id: 2})
  end

  def self.done(project_id)
    Task.all.where(tasks: {project_id: project_id, status_id: 3})
  end
end
