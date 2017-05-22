class AddHasSecurePasswordToAdminUser < ActiveRecord::Migration[5.0]
  def change
    remove_column "admin_users", "password"
    add_column "admin_users", "password_digest", :string
  end
end
