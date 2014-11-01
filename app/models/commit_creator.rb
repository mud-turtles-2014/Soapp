class CommitCreator < ActiveType::Object
	attribute :branch_name, :string
	attribute :branch_id, :integer

	attribute :repo_name, :string
	attribute :repo_id, :integer

	validates_presence_of :branch_id, :repo_id

	before_save :find_branch
	before_save :find_repo

	after_save :create_commit
	after_save :add_to_branch
	after_save :add_to_repo
	



end