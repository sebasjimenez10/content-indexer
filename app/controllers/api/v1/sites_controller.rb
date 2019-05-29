module API
  module V1
    class SitesController < ApplicationController
      def context
        super.merge(site_id: params[:id])
      end
    end
  end
end
