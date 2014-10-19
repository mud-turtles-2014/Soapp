class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery except: :create_commit

  helper_method :current_user, :find_collisions

  def index
    render "index"
  end


  private

  def find_collisions(repo)
    files = []
    repo.commits.each do |commit|
      files << commit.path_names
    end
    files.detect{ |change| files.count(change) > 1}
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end
