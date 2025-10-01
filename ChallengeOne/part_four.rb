# Mason Rhodes
# September 10th
# Part 4

require 'net/http'
require 'json'
require 'pp'

url = 'https://data.winnipeg.ca/resource/d3jk-hb6j.json?%24limit=306000'
uri = URI(url)
response = Net::HTTP.get(uri)
wpg_trees = JSON.parse(response)
ash_trees = []
# pp wpg_trees

wpg_trees.each do |tree_count|
  if tree_count['common_name'].downcase.include?('ash')
    ash_trees << tree_count['common_name']
  end
end

puts "There is a total of " + ash_trees.count.to_s + " ash trees in Winnipeg."