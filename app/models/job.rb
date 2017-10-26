class Job < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  has_many :members, through: :job_members
  has_many :job_members
  belongs_to :member
  acts_as_taggable            # acts_as_taggable_on :tags のエイリアス
  acts_as_ordered_taggable_on :genre, :options

end
