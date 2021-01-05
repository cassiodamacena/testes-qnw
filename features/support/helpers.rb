require "httparty"

module Helpers
  def delorean
    HTTParty.get("http://parodify.qaninja.com.br/helpers?email=cassio.damacena@hotmail.com")
  end
end
