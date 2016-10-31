require 'rest_client'
require 'json'
require 'nokogiri'


request=RestClient::Resource.new("http://api.openweathermap.org/data/2.5/weather?q=Bangalore")
response=request.get
puts response.class
puts response.code
res=JSON.parse(response.body)
puts res
puts "The name of the city is #{res['name']} : #{res['main']['temp']}"
puts JSON.pretty_generate(res)
request=RestClient::Resource.new("api.openweathermap.org/data/2.5/weather?q=Bangalore&mode=xml")
response=request.get
puts response.class
puts response.code
puts response.body
doc = Nokogiri::XML(response.body)
puts doc.xpath("//city").count
doc.xpath("//city").xpath("//country").each{|x| puts x}

puts "---------For multiple cities---------------"
request=RestClient::Resource.new("http://api.openweathermap.org/data/2.5/group?id=524901,703448,2643743&units=metric")
res=request.get
puts JSON.pretty_generate(JSON.parse(res.body))