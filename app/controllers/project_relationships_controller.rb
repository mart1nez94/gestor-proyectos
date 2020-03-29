class ProjectRelationshipsController < ApplicationController

  def create
    ProjectRelationship.create_relationship(project_relationship_params)
    redirect_to request.referrer
    flash[:success] = "Member was added to this project!"
  end

  private

  def project_relationship_params
    params.require(:project_relationship).permit(:user_id, :project_id)
  end
end
