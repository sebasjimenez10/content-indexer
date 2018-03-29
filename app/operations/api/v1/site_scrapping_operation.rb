require 'net/http'

module API
  module V1
    # Site Scrape operation
    class SiteScrappingOperation
      class << self
        def execute(record)
          site = Net::HTTP.get(URI(record.url))
          doc = Nokogiri::HTML::Document.parse(site)
          process_target_content(doc, record)
        end

        private

        def process_target_content(doc, record)
          %w[h1 h2 h3 a].each do |tag|
            process_tags(doc, tag, record)
          end
        end

        def process_tags(doc, tag, record)
          doc.css(tag).map(&:text).each do |content|
            record.elements.create(tag: tag, content: content)
          end
        end
      end
    end
  end
end
