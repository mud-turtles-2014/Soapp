class User < ActiveRecord::Base
  has_many :team_projects
  has_many :branches
  has_many :repos, through: :team_projects
  has_many :commits, through: :branches

  validates_presence_of :uid, :name, :email, :token
  validates_uniqueness_of :email, :uid, :token

  def self.from_omniauth(auth)

    auth_email = auth[:info][:email]

    self.where(email: auth_email).first || create_with_omniauth(auth)
  end

  def self.create_with_omniauth(auth)
    create do |user|
      user.uid = auth["uid"]
      user.token = auth["credentials"]["token"]
      user.name = auth["info"]["name"]
      user.email = auth["info"]["email"]

      user.avatar_url = auth["info"]["image"]
    end
  end

  def latest_commits(limit = 6)
    latest = self.commits.includes(:branch).order(created_at: :desc).limit(limit)
  end

  def json_info
    my_user = {}
    my_user[:main_info] = self
    my_user[:latest_commits] = self.latest_commits
    my_user
  end

end
