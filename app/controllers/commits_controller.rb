class CommitsController < ApplicationController

before_action :get_commit, except: :create_commit

  def create_commit
    user = User.find_by(email: commit_email_params[:email])
    repo = user.repos.find_by(name: repo_params[:repo])
      unless user && repo
         404
         render nothing: true
      end

    file_changes = FileChange.parse_and_create(diff_params[:diff])
    commit = Commit.create(commit_params)
    commit.file_changes = file_changes
    branch = Branch.find_or_create_by(name: branch_params[:name])
    user.branches << branch
    branch.commits << commit
    branch.update(last_commit: Time.now)


    repo.update(last_commit: Time.now)
    repo.branches << branch

    200
    render nothing: true
  end


  def get_commit
    @commit = Commit.find_by(sha: params[:id])
  end

  def show
    @commit = Commit.find(params[:id])
    @repo = @commit.branch.repo
    @lastest_commits = @repo.commits.order(:updated_at).reverse_order.limit(6)
  end

  private

  def commit_params
    params.require(:commit).permit(:sha,:message, :full_diff)
  end

  def branch_params
    params.require(:branch).permit(:name)
  end

  def commit_email_params
    params.require(:commit).permit(:email)
  end

  def diff_params
    params.require(:commit).permit(:diff)
  end
  def repo_params
    params.require(:commit).permit(:repo)
  end
#comment
end

