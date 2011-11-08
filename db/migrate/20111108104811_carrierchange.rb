class Carrierchange < ActiveRecord::Migration
  def up
    remove_column :contents, :file
    remove_column :contents, :file_name
    remove_column :contents, :doctype
    add_column :contents, :file, :binary
    
  end

  def down
  end
end
