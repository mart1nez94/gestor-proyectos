class ProjectRelationship < ApplicationRecord
  belongs_to :user
  belongs_to :project

  def self.create_relationship(project_relationship_params)
    unless ProjectRelationship.find_by(user_id: project_relationship_params[:user_id], project_id: project_relationship_params[:project_id])
      ProjectRelationship.create!(project_relationship_params)
    end
  end
end
