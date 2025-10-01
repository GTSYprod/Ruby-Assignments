# Mason Rhodes
# September 8th, 2025
# Part 3

require 'net/http'
require 'json'
require 'pp'

url = 'https://dog.ceo/api/breeds/list/all'
uri = URI(url)
response = Net::HTTP.get(uri)
dog_breeds = JSON.parse(response) # Convert JSON data into Ruby data.
# pp dog_breeds # pp stands for pretty print.

dog_breeds['message'].each do |breed, sub_breeds|
  dog_info = "* #{breed.capitalize}"
  unless sub_breeds.empty?
    sub_breeds.each do |sub_breed|
      dog_info += "\n  * #{sub_breed.capitalize}"
    end
  end
  puts dog_info
end