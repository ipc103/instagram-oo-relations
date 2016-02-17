require_relative "../lib/photo.rb"
require_relative "../lib/user.rb"

puts "What is your username?"
username = gets.chomp
user = User.find_by_name(username)
user.photos.each do |photo|
  puts "URL: #{photo.image_url}"
  puts "Caption: #{photo.caption}"
end
puts "Enter a photo url:"
image_url = gets.chomp
