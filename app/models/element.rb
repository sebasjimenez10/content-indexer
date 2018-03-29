# == Schema Information
#
# Table name: elements
#
#  id         :uuid             not null, primary key
#  tag        :string
#  content    :text
#  site_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Element < ApplicationRecord
  belongs_to :site

  validates :tag, :content, :site, presence: true
end
