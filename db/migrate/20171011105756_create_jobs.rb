class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string        :title
      t.text          :introduction
      t.text          :image
      t.text          :description
      t.text          :skill
      t.timestamps
    end
  end
end
