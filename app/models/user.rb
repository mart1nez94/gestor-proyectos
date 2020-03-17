class User < ApplicationRecord
  has_many :project_relationships
  has_many :tasks
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  def self.from_this_project(project_id)
    User.all.joins(:project_relationships)
    .where(project_relationships: {project_id: project_id})
  end
end
