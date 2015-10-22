# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Restaurant.delete_all
RestaurantRecommendation.delete_all

puts 'Entries Deleted'

50.times do |i|
  Restaurant.create(:name => Faker::Lorem.words(rand(2..4)).join(" ").titleize)
end

puts 'Created Restaurants'

125.times do |i|
  base, recommendation = Restaurant.all.sample, Restaurant.all.sample
  base.recommended_restaurants << recommendation unless base.recommended_restaurants.include?(recommendation)
end

puts 'Created Reviews'

puts 'Seed Complete!'