module API
  module V1
    # Site resource
    class SiteResource < ApplicationResource
      attributes :url

      has_many :elements
    end
  end
end
