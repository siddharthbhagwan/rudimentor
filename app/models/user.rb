class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :batches
  
  def batch_setup(data)
  	(1...41).each do |i|
  		b = Batch.new(user_id: data.id,
  									rudiment_number: i,
  									ability_bpm: 0,
  									ability_beat: 0,
  									endurance_bpm: 0,
  									endurance_beat: 0
  									)
  		b.save
  		
  	end
  end

  def batch_threshold
    p self.batches.count == 40? true : false
  end

end
