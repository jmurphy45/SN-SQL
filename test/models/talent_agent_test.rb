# == Schema Information
#
# Table name: talent_agents
#
#  id         :integer          not null, primary key
#  first_name :string
#  last_name  :string
#  dob        :date
#  pitch      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class TalentAgentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
