class Project < ApplicationRecord
  has_many :project_relationships
  has_many :tasks

  def self.projects_by_user(user_id)
    Project.all.joins(:project_relationships)
      .where(project_relationships: {user_id: user_id})
  end
end
