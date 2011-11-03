class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
       t.string :title
      	
            t.string :description
      	
            t.date :date
      	
            t.string :file_name
      	
            t.text :content
      	
            t.string :doctype
      	
           t.string :source
       		
           t.string :added_by
       	
      t.timestamps
    end
  end
end
