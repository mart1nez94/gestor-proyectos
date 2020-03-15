class Project < ApplicationRecord
  has_many :user_relationships

  def self.projects_by_user(user_id)
    Project.all.joins(:user_relationships).where(user_relationships: {user_id: user_id})
  end
end
