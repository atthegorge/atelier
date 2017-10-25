class Member < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable
  has_many :jobs
  geocoded_by :address
  after_validation :geocode, if: lambda {|obj| obj.address_changed?}
end
