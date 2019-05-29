module API
  module V1
    class NotAuthorizedError < JSONAPI::Exceptions::Error
      attr_accessor :id

      def initialize(id)
        @id = id
      end

      def errors
        [JSONAPI::Error.new(
          title: 'Access not allowed',
          detail: 'User is not allowed to access resource',
          code: JSONAPI::FORBIDDEN,
          status: :forbidden,
          id: id)]
      end
    end
  end
end
