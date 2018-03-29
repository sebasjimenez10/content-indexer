module API
  module V1
    class ElementResource < ApplicationResource
      attributes :tag, :content

      def custom_links(options)
        { self: nil }
      end
    end
  end
end
