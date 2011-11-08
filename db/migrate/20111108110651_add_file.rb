class AddFile < ActiveRecord::Migration
  def up
    add_column :contents, :file, :string
  end

  def down
  end
end
