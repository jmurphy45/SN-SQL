# == Schema Information
#
# Table name: likes
#
#  id            :integer          not null, primary key
#  liker_type    :string
#  liker_id      :integer
#  likeable_type :string
#  likeable_id   :integer
#  created_at    :datetime
#

require 'test_helper'

class LikeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
