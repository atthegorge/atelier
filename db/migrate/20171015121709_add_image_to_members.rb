class AddImageToMembers < ActiveRecord::Migration
  def change
    add_column :members, :image, :text
  end
end
