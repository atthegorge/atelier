class CreateJobMembers < ActiveRecord::Migration
  def change
    create_table :job_members do |t|
      t.integer   :job_id
      t.integer   :member_id
      t.timestamps null: false
    end
  end
end
