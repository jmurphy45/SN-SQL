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

class TalentAgent < ActiveRecord::Base
end
