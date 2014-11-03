class CommitCreator < ActiveType::Object

	attribute :branch, :string
	attribute :branch_id, :integer

	attribute :email, :string
	attribute :user_id, :integer

	attribute :repo, :string
	attribute :repo_id, :integer

	attribute :message
	attribute :sha
	attribute :diff
	attribute :full_diff

	belongs_to :user
	belongs_to :repo
	belongs_to :branch

	validates_presence_of :user, :repo

	before_validation :find_user
	before_validation :find_repo
	

	after_save :create_commit
	after_save :add_to_branch
	after_save :add_to_repo
	after_save :create_file_changes
	
	private

	def find_user
		self.user = User.find_by(email: email)
		p self.user
		p "done finding user"
	end

	def find_repo
		repo = self.user.repos.find_by(name: repo)
	end

	def find_branch
		self.branch = self.repo.branches.find_or_create_by(name: branch)
	end

	def create_commit
		self.commit = Commit.create(message: self.message, sha: self.sha, full_diff: self.full_diff)
	end

	def add_to_branch
		self.branch.commits << self.commit
	end

	def create_file_changes
		self.commit.file_changes = FileChange.parse_and_create(self.diff)
	end

end