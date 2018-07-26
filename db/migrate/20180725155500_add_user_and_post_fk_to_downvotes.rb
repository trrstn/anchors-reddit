class AddUserAndPostFkToDownvotes < ActiveRecord::Migration[5.2]
  def change
    add_reference :downvotes, :post, foreign_key: true
    add_reference :downvotes, :user, foreign_key: true
  end
end
