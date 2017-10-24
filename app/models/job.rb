class Job < ActiveRecord::Base
  belongs_to :member
    acts_as_taggable            # acts_as_taggable_on :tags のエイリアス
    acts_as_ordered_taggable_on :skills, :options
end
