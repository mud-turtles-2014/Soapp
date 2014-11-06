class CommitsController < ApplicationController

  def create_commit
    build_commit
    if @new_commit.save
      200
      render nothing: true
    else
      404
      render nothing: true
    end
    
  end

  def show
    @commit = Commit.find(params[:id])
    @repo = @commit.branch.repo
    @lastest_commits = @repo.commits.order(:updated_at).reverse_order.limit(6)
  end

  private

  def commit_params
    params.require(:commit).permit(:email,:sha,:message,:diff,:full_diff,:branch,:repo_name)
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
    params.require(:commit).permit(:repo_name)
  end

  def build_commit
    @new_commit = CommitCreator.new(commit_params)
  end

end

