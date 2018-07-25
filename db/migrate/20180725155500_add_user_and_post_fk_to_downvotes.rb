class AddUserAndPostFkToDownvotes < ActiveRecord::Migration[5.2]
  def change
    add_reference :posts, :downvote, foreign_key: true
    add_reference :users, :downvote, foreign_key: true
  end
end
