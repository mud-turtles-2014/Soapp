require 'rails_helper'

RSpec.describe CommitsController, :type => :controller do
	belongs_to :branch, class_name: 'Branch'
	belongs_to :repo, class_name: 'Repo'
end
