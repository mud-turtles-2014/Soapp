class User < ActiveRecord::Base
  has_many :team_projects
  has_many :repos, through: :team_projects

  validates_presence_of :github_uid, :name, :github_token
  validates_uniqueness_of :github_uid, :display_name

  # def self.create_with_omniauth(auth)
  #   create! do |user|
  #     user.provider = auth["provider"]
  #     user.uid = auth["uid"]
  #     user.name = auth["info"]["name"]
  #   end
  # end

end
