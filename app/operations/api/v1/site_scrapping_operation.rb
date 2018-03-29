require 'open-uri'

module API
  module V1
    class SiteScrappingOperation
      class << self
        def execute(record)
          site = open(record.url)
          doc = Nokogiri::HTML::Document.parse(site.read)
          process_target_content(doc, record)
        end

        private

        def process_target_content(doc, record)
          %w(h1 h2 h3 a).each do |tag|
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
