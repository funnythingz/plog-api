module ErrorHandler
  extend ActiveSupport::Concern

  def forbidden
    ErrorResponseCode.new(status: 403)
  end

  def not_found
    ErrorResponseCode.new(status: 404)
  end

  def server_error
    ErrorResponseCode.new(status: 500)
  end
end