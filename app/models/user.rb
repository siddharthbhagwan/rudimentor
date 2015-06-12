require 'role_model'
class User < ActiveRecord::Base
   include RoleModel
   roles_attribute :roles_mask
   roles :admin, :user


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  has_many :batches
  
  def batch_setup(data)
  	(1...41).each do |i|
  		b = Batch.new(user_id: data.id,
  									rudiment_number: i.to_i,
  									ability_bpm: 0,
  									ability_beat: 0,
  									endurance_bpm: 0,
  									endurance_beat: 0
  									)
  		b.save  		
  	end
  end

  def batch_threshold
    self.batches.count == 40? true : false
  end

end
