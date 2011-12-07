class CreateCategory < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :title
      t.string :icon
      t.timestamps
  end
end
