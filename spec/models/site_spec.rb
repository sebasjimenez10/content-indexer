require 'rails_helper'

RSpec.describe Site, type: :model do
  subject { build(:site) }

  describe 'Validations' do
    it { should validate_presence_of(:url) }
  end

  describe 'Associations' do
    it { should have_many(:elements) }
  end
end
