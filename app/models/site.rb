# == Schema Information
#
# Table name: sites
#
#  id         :uuid             not null, primary key
#  url        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Site < ApplicationRecord
  has_many :elements

  validates :url, presence: true
end
