class UpdatePasswordToPasswordDigest < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :password, :password_digest
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
