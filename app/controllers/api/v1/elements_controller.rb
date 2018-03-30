module API
  module V1
    class ElementsController < ApplicationController
      def context
        super.merge(element_id: permitted_params[:id], site_id: permitted_params[:site_id])
      end

      private

      def permitted_params
        params.require(:site_id)
        params.permit(:site_id, :id)
      end
    end
  end
end
