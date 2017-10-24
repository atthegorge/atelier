class Job < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  belongs_to :member
  acts_as_taggable            # acts_as_taggable_on :tags のエイリアス
  acts_as_ordered_taggable_on :genre, :options

end
