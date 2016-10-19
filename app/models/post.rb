# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  post       :text
#  user_id    :integer
#

class Post < ActiveRecord::Base
  belongs_to :user

  acts_as_commontable
end
