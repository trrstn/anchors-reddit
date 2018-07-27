class AddIsLockedToPostDefaultFalse < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :is_locked, :boolean, default: false
  end
end
