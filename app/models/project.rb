class Project < ApplicationRecord
  has_many :project_relationships
  has_many :tasks

  def self.projects_by_user(user_id)
    Project.all.joins(:project_relationships)
      .where(project_relationships: {user_id: user_id})
  end

  def self.project_by_id(project_id)
    Project.all.find_by(id: project_id)
  end

  def self.update_project(project_id, project_params)
    Project.find_by(id: project_id).update(project_params)
  end

  def self.create_project(user_id, project_params)
    project = Project.create!(project_params)
    ProjectRelationship.create!(user_id: user_id, project_id: project.id)
  end
end
