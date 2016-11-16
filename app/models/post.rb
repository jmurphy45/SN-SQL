# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  user_post  :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Post < ApplicationRecord
  validates :user_post, length: { minimum: 1 }
end
