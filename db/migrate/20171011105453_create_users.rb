class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string      :name
      t.string        :mail
      t.text        :image
      t.string        :password
      t.string        :role
      t.timestamps
    end
  end
end
