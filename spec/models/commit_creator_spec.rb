require 'rails_helper'

describe CommitCreator do
	it "finds a valid user when passed a commit" do
	test_commit = CommitCreator.create(
		{
			message: "message",
			sha: "9f93kw3",
			email: "chris.wallwork@gmail.com",
			repo: "https://github.com/cwallwork/bourbonDemo.git",
			branch: "test branch",
			diff: "this is the diff",
			full_diff: "this is the full diff"
		}

		)
	expect(test_commit.user_id).to eq 1
	end
end

CommitCreator.new({message: "message",sha: "9f93kw3",email: "chris.wallwork@gmail.com",repo: "https://github.com/cwallwork/bourbonDemo.git",branch: "test branch",diff: "this is the diff",full_diff: "this is the full diff"})

CommitCreator.create({sha: "a519e7229a89b7a08696f7e0d5d1560582ebd646", email: "chris.wallwork@gmail.com", repo: "https://github.com/cwallwork/bourbonDemo.git", diff: "M\tREADME.md\n", message: "test commit", full_diff: "diff --git a/README.md b/README.md\nindex a75f33a..d539cb7 100644\n--- a/README.md\n+++ b/README.md\n@@ -2,4 +2,4 @@ bourbonDemo\n ===========\n \n Bourbon demo for gemsy talk\n-basda\n+basdasdf\n", branch: "master"})