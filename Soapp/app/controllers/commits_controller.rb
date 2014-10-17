class CommitsController < ApplicationController

before_action :get_commit, except: :create_commit

  def create_commit
    @user = User.find_by(email: commit_email_params[:email])
    file_changes = FileChange.parse_and_create(diff_params[:diff])
    commit = Commit.create(commit_params)
    commit.file_changes = file_changes
    p branch_params[:name]
    branch = Branch.create(name: branch_params[:name])



    # @user.branches << Branch.find_or_create_by(name: branch_params[:name])
    # @user.branches@diffs = FileChanges.parsethatshit
    # @branch.commits.create(commit_params)
    # @branch.commits.last addsomediffs
    # @branch.to_json

  end

  def get_commit
    @commit = Commit.find_by(sha: commit_params[:sha])

  end

  def show

  end

  private
  def commit_params
    params.require(:commit).permit(:sha,:message)
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
#comment
end

