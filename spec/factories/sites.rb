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

FactoryBot.define do
  factory :site do
    url 'http://www.google.com'
    user_id SecureRandom.uuid
  end
end
