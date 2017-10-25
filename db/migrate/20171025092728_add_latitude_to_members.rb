class AddLatitudeToMembers < ActiveRecord::Migration
  def change
    add_column :members, :latitude, :text
  end
end
