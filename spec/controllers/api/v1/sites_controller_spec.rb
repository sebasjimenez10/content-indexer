require 'rails_helper'

RSpec.describe API::V1::SitesController, type: :controller do
  describe 'Actions' do
    describe '#create' do
      before do
        post :create, params: { data: { type: 'sites', attributes: { url: 'https://www.bloomberg.com/quote/USDCOP:CUR' } } }
      end

      it 'sends back a response with the new site' do
        expect(json['data']).to be_truthy
      end

      it 'stores a new site' do
        expect(Site.count).to eq 1
      end

      it 'saves site target content as elements' do
        expect(Element.where(site_id: Site.last.id).count.positive?).to eq true
      end
    end
  end
end
