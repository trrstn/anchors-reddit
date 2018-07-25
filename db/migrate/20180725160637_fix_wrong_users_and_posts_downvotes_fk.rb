class FixWrongUsersAndPostsDownvotesFk < ActiveRecord::Migration[5.2]
  def change
    add_reference :downvotes, :posts, foreign_key: true
    add_reference :downvotes, :users, foreign_key: true
    remove_column :posts, :downvotes_id, index: true
    remove_column :users, :downvotes_id, index: true
  end
end
