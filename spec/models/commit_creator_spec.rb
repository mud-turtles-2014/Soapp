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