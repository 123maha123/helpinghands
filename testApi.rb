require 'rest_client'
require 'json'


request=RestClient::Resource.new("http://api.openweathermap.org/data/2.5/weather?q=Bangalore")
response=request.get
puts response.class
puts response.code
res=JSON.parse(response.body)
puts res
puts "The name of the city is #{res['name']} : #{res['main']['temp']}"