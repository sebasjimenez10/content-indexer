module API
  module V1
    class SiteResource < ApplicationResource
      attributes :url

      has_many :elements
    end
  end
end
