class AddFollowsToFollows < ActiveRecord::Migration
  def change
    add_column :follows, :follows, :integer
  end
end
