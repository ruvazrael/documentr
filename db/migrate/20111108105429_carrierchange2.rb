class Carrierchange2 < ActiveRecord::Migration
  def up
    remove_column :contents, :file
    add_column :contents, :file, :string
  end

  def down
  end
end
