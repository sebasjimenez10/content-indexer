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

require 'rails_helper'

RSpec.describe Site, type: :model do
  subject { build(:site) }

  describe 'Validations' do
    it { should validate_presence_of(:url) }
    it { should validate_presence_of(:user_id) }
  end

  describe 'Associations' do
    it { should have_many(:elements) }
  end
end
