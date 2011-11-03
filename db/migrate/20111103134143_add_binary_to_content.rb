class AddBinaryToContent < ActiveRecord::Migration
  def up
    add_column :contents, :file, :binary
  end
end
