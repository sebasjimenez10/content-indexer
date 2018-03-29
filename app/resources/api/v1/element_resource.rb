module API
  module V1
    # Element resource
    class ElementResource < ApplicationResource
      attributes :tag, :content

      def custom_links(_options)
        { self: nil }
      end
    end
  end
end
