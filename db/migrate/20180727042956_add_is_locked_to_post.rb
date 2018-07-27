class AddIsLockedToPost < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :is_locked, :boolean
  end
end
