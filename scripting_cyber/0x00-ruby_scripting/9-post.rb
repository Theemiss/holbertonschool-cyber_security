require 'net/http'
require 'uri'
require 'json'

def post_request(url, body_params = {})
  uri = URI.parse(url)
  
  http = Net::HTTP.new(uri.host, uri.port)
  http.use_ssl = true if uri.scheme == 'https'
  
  request = Net::HTTP::Post.new(uri.request_uri)
  request.body = body_params.to_json
  request['Content-Type'] = 'application/json'
  
  response = http.request(request)
  
  puts "Response status: #{response.code} #{response.message}"
  puts "Response body:"
  puts JSON.pretty_generate(JSON.parse(response.body))
end

