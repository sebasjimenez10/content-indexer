module API
  module V1
    # Site processor
    class SiteProcessor < JSONAPI::Processor
      after_create_resource :scrape_site_operation

      def scrape_site_operation
        API::V1::SiteScrappingOperation.execute(@result.resource._model)
      end
    end
  end
end
