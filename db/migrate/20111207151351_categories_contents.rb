class CreateCategoriesContents < ActiveRecord::Migration
  def change
    create_table :categories_contents, id => false do |t|
      t.references :category_id 
      t.references :content_id
      t.timestamps
  end
end
