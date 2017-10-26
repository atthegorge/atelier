class JobMember < ActiveRecord::Base
  belongs_to :job
  belongs_to :member
end
