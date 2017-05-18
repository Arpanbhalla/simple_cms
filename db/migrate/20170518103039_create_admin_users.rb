class CreateAdminUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :admin_users do |t|
      t.string "username" ,:limit => 50
      t.string "first_name" , :limit => 50
      t.string "last_name" ,:limit => 50
      t.string "email" , :default => '', :null => false
      t.string "password", :limit => 50 
      t.timestamps
    end
  end
end

