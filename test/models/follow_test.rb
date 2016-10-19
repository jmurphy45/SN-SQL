# == Schema Information
#
# Table name: follows
#
#  id              :integer          not null, primary key
#  follower_type   :string
#  follower_id     :integer
#  followable_type :string
#  followable_id   :integer
#  created_at      :datetime
#

require 'test_helper'

class FollowTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
