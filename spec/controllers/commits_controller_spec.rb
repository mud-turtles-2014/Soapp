require 'rails_helper'

RSpec.describe CommitsController, :type => :controller do
# 	belongs_to :branch, class_name: 'Branch'
# 	belongs_to :repo, class_name: 'Repo'
# end

  describe "POST #create_commit" do
    it "creates a commit with a valid user and repo" do
      expect{
        post :create_commit, commit:
          {
            sha: "a519e7229a89b7a08696f7e0d5d1560582ebd646",
            email: "chris.wallwork@gmail.com",
            repo_name: "https://github.com/cwallwork/bourbonDemo.git",
            diff: "M\tREADME.md\n",
            message: "test commit",
            full_diff: "diff --git a/README.md b/README.md\nindex a75f33a..d539cb7 100644\n--- a/README.md\n+++ b/README.md\n@@ -2,4 +2,4 @@ bourbonDemo\n ===========\n \n Bourbon demo for gemsy talk\n-basda\n+basdasdf\n",
            branch: "master"
          } 

        }.to change(Commit, :count).by(1)
    end
  end
end
