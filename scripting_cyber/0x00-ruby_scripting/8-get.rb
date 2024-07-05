require 'net/http'
require 'uri'
require 'json'

def get_request(url)
  uri = URI.parse(url)
  
  response = Net::HTTP.get_response(uri)
  status_code = response.code
  status_message = response.message
  body = response.body
  
  puts "Response status: #{status_code} #{status_message}"
  puts "Response body:"
  puts JSON.pretty_generate(JSON.parse(body))
end

