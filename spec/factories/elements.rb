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

FactoryBot.define do
  factory :element do
    tag 'h1'
    content 'Lorem ipsum'
    site
  end
end
