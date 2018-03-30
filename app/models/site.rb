# == Schema Information
#
# Table name: sites
#
#  id         :uuid             not null, primary key
#  url        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :uuid
#

class Site < ApplicationRecord
  has_many :elements

  validates :url, :user_id, presence: true
end
