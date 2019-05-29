module Support
  module HeadersHelper
    def header(key, value)
      @request.headers[key] = value
    end
  end
end
