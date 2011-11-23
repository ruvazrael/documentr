class AddAuthToken < ActiveRecord::Migration
  def change
    add_column :users, :auth_token, :string
  end

  def down
  end
end
