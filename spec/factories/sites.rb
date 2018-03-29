# == Schema Information
#
# Table name: sites
#
#  id         :uuid             not null, primary key
#  url        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :site do
    url 'http://www.google.com'
  end
end
