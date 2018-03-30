require 'rails_helper'

RSpec.describe API::V1::ElementsController, type: :controller do
  describe 'Actions' do
    describe '#index', secured: true do
      let(:site_one) { create(:site, user_id: @user_id) }
      let(:site_two) { create(:site, user_id: SecureRandom.uuid) }

      before do
        API::V1::SiteScrappingOperation.execute(site_one)
        API::V1::SiteScrappingOperation.execute(site_two)
      end

      context 'when the user tries to access someone else\'s site' do
        before do
          header 'Authorization', "Bearer #{@token}"
          get :index, params: { site_id: site_two.id }
        end

        it 'should return status code unauthorized' do
          expect(response).to have_http_status(:forbidden)
        end
      end

      context 'when user created a site' do
        before do
          header 'Authorization', "Bearer #{@token}"
          get :index, params: { site_id: site_one.id }
        end

        it 'should return status code :ok' do
          expect(response).to have_http_status(:ok)
        end

        it 'should return a valid response' do
          expect(json['data']).to be_truthy
        end

        it 'should return a list of elements' do
          expect(json['data'].class).to eq Array
          expect(json['data'].size).to eq 2
        end
      end
    end
  end
end
