class CommitsController < ApplicationController

before_action :get_commit, except: :create_commit

  def create_commit
    repo = Repo.find_by(name: repo_params[:repo])
    user = User.find_by(email: commit_email_params[:email])
      unless repo && user
        return 500
      end

    file_changes = FileChange.parse_and_create(diff_params[:diff])
    commit = Commit.create(commit_params)
    commit.file_changes = file_changes
    branch = Branch.find_or_create_by(name: branch_params[:name])
    user.branches << branch
    branch.commits << commit
    user.commits << commit
    branch.update(last_commit: Time.now)


    repo.update(last_commit: Time.now)
    repo.branches << branch

    200
    render nothing: true
  end

  # def heat_map(repo_commits)# returns an array with the file name and the times it was counted
  #     all_paths = []
  #     repo_commits.each do |com|
  #       com.file_changes.each do |change|
  #         all_paths << change.file_path
  #       end
  #       all_paths
  #     end
  #     order = all_paths.inject(Hash.new(0)){|path, freq| path[freq] += 1 ; path}.to_a.sort{|a,b|b[1]<=>a[1] }
  #     order
  # end

  def get_commit
    @commit = Commit.find_by(sha: params[:id])
  end

  def show
    @commit = Commit.find(params[:id])
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
  def repo_params
    params.require(:commit).permit(:repo)
  end
#comment
end

