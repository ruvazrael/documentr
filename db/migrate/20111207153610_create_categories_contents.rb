class CreateCategoriesContents < ActiveRecord::Migration
  def change
    create_table :categories_contents, :id => false do |t|
      t.references :category 
      t.references :content
      t.timestamps
   end 
 end
end