class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.string :salutation
      t.string :remark
      t.string :role
      t.integer :roles_mask
      t.string :auth_token
      t.string :password_reset_token
      t.datetime :password_reset_sent_at
      
      t.timestamps
    end
  end
end
