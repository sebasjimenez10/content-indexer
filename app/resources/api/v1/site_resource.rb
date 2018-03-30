module API
  module V1
    # Site resource
    class SiteResource < ApplicationResource
      attributes :url, :user_id

      has_many :elements

      before_create do
        @model.user_id = context[:current_user].id
      end

      def self.records(options = {})
        context = options[:context]
        context[:current_user].sites
      end
    end
  end
end
