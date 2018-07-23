class RemoveAvatarFromUserAndAddImageToPost < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :image, :string
    remove_column :users, :avatar
  end
end
