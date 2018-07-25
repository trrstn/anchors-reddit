class FixDownvotesUsersPostsName < ActiveRecord::Migration[5.2]
  def change
    remove_column :downvotes, :posts_id, index: true
    remove_column :downvotes, :users_id, index: true
    add_reference :downvotes, :post, foreign_key: true
    add_reference :downvotes, :user, foreign_key: true
  end
end
