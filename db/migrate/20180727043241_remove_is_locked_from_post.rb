class RemoveIsLockedFromPost < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :is_locked
  end
end
