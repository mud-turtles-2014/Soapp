require 'rails_helper'

describe Commit do
	it "is valid with a message, sha and full diff" do
		commit = Commit.new(
			message: "test message",
			sha: "test sha",
			full_diff: "full diff")
		expect(commit).to be_valid
	end

	it "is invalid without a message" do
		commit = Commit.new(message: nil)
		commit.valid?
		expect(commit.errors[:message]).to include("can't be blank")
	end

	it "is invalid without a sha" do
		commit = Commit.new(sha: nil)
		commit.valid?
		expect(commit.errors[:sha]).to include("can't be blank")
	end
	it "is invalid without a full diff" do
		commit = Commit.new(full_diff: nil)
		commit.valid?
		expect(commit.errors[:full_diff]).to include("can't be blank")
	end
end
