require 'net/http'
require 'uri'

def get_request(url)
  uri = URI.parse(url)
  
  response = Net::HTTP.get_response(uri)
  puts "Response Status Code: #{response.code}"
  puts "Response Body:"
  puts response.body
end
