class Batch < ActiveRecord::Base
	has_many :rudiments
	belongs_to :user

	def testfn
    p '-------------------------------------------------------------------------------'
    b = Batch.new
    b.save
    # subtest
  end

end