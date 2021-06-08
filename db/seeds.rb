# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts "Cleaning database..."
User.destroy_all
ArtistProfile.destroy_all
Item.destroy_all
Booking.destroy_all
FavoriteArtist.destroy_all
FavoriteItem.destroy_all

artist_biography = 
  "In the early 1950s, Rotella began to rip posters away from the walls of 
  outdoor hoardings in Rome, and used them to create elaborate collages. 
  Many of these were film posters but he also used advertisements for appliances 
  and other goods, so that his works became a commentary on the post-war consumer boom. 
  In the studio he would mount the poster fragments onto canvas, rearranging the 
  pieces into new compositions but also stripping away further layers to 
  accentuate their distressed appearance."

puts "Creating users..."

4.times {
  User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: '123456',
    address: Faker::Address.full_address
  )
}

puts "Creating Artists..."

4.times {
  ArtistProfile.create!(
    biography: artist_biography;
  )
}

puts "Creating Items..."

15.times {
  Item.create!(
    
  )
}