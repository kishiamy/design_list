class ImagesQuery
  include HTTParty

  def initialize(options)
    @url   = Rails.application.secrets.url
    @token = Rails.application.secrets.token
    @options = options
    delete_emtpy_keys
  end

  def response
    @response = HTTParty.get(
      @url,
      headers: {"X-Auth-Token" => @token },
      query: @options
    )
  end

  private

  def delete_emtpy_keys
    @options.delete_if { |k,v| v.blank? }
  end

end
