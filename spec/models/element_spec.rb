require 'rails_helper'

RSpec.describe Element, type: :model do
  let(:site) { create(:site) }
  subject { build(:element, site: site) }

  describe 'Validations' do
    it { should validate_presence_of(:tag) }
    it { should validate_presence_of(:content) }
    it { should validate_presence_of(:site) }
  end

  describe 'Associations' do
    it { should belong_to(:site) }
  end
end
