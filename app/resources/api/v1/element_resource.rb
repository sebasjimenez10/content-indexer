module API
  module V1
    # Element resource
    class ElementResource < ApplicationResource
      attributes :tag, :content, :site_id

      def custom_links(_options)
        { self: nil }
      end

      def self.records(options = {})
        context = options[:context]
        site = context[:current_user].sites.to_a.find { |s| s.id == context[:site_id] }

        raise NotAuthorizedError.new(context[:site_id]) unless site.present?

        site.elements
      end
    end
  end
end
