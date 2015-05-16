class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :batches
  
  def batch_setup
  	p 'CCALLLLLLLEEDDDDDDDDD'
  end

  def batch_threshold
    p self.batches.count == 40? true : false
  end

end
