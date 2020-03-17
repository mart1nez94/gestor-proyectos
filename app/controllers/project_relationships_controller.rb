class ProjectRelationshipsController < ApplicationController

  def create
    ProjectRelationship.create_relationship(project_relationship_params)
  end

  private

  def project_relationship_params
    params.require(:project_relationship).permit(:user_id, :project_id)
  end
end
