class Batch < ActiveRecord::Base
	has_many :rudiments
	belongs_to :user
end