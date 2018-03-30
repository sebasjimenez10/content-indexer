require 'rails_helper'

RSpec.describe API::V1::SitesController, type: :controller do
  before do
    header 'Content-Type', 'application/vnd.api+json'
  end

  describe 'Actions' do
    describe '#create', secured: true do
      before do
        header 'Authorization', "Bearer #{@token}"
        post :create, params: { data: { type: 'sites', attributes: { url: 'https://www.bloomberg.com/quote/USDCOP:CUR' } } }
      end

      it 'should return http status code :created' do
        expect(response).to have_http_status(:created)
      end

      it 'sends back a response with the new site' do
        expect(json['data']).to be_truthy
      end

      it 'stores a new site' do
        expect(Site.count.positive?).to be true
      end

      it 'saves site target content as elements' do
        created_site = json['data']['id']
        expect(Element.where(site_id: created_site).count.positive?).to eq true
      end
    end
  end
end
