class User < ActiveRecord::Base
  has_many :team_projects
  has_many :repos, through: :team_projects

  validates_presence_of :uid, :name, :email, :token
  validates_uniqueness_of :email, :uid, :token

  def self.from_omniauth(auth)
    where(auth.slice('email')).first || create_with_omniauth(auth)
  end

  def self.create_with_omniauth(auth)
    create! do |user|
      user.uid = auth["uid"]
      user.token = auth["credentials"]["token"]
      user.name = auth["info"]["name"]
      user.email = auth["info"]["email"]

      user.avatar_url = auth["info"]["image"]
    end
  end

end
