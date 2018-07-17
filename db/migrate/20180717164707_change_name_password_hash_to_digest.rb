class ChangeNamePasswordHashToDigest < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :password_hash, :password_digest
  end
end
