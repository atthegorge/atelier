class AddLongitudeToMembers < ActiveRecord::Migration
  def change
    add_column :members, :longitude, :text
  end
end
