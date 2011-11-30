class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :title
      t.string :description
      t.date :date
      t.string :file
      t.text :content
      t.string :source
      t.integer :author_id # TODO: FOREIGN KEY!
      t.string :link
      t.string :type
      t.timestamps
    end
  end
end
