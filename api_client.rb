require "faraday"


client = Faraday.new(url: 'http://localhost:3000') do |config|
  config.adapter  Faraday.default_adapter
  config.token_auth('60656371432bfc6b7cffcf1f051acdf8')
end
 
response = client.post do |req|
  req.url '/api/v1/posts'
  req.headers['Content-Type'] = 'application/json'
  req.body = '{ "post": {"title": "Tislassaasasassaasasasasas", "body": "Text"} }'
end

puts response.status
