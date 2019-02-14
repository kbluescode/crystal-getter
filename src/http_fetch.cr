require "http/client"

module Fetch
  extend self

  def get_url(url : String)
    response = HTTP::Client.get url
    "Status: #{response.status_code}\nBody:\n#{response.body}"
  rescue ex : Socket::Addrinfo::Error
    "Error: #{ex}"
  end
end
