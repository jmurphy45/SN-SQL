class AddUserToFollows < ActiveRecord::Migration
  def change
    add_reference :follows, :user, index: true, foreign_key: true
  end
end
