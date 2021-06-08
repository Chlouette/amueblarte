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

item_category = [
  "Sofa", "Chair", "Bench",
  "Bed", "Drawers", "Table",
  "Desk", "Stool", "Cupboard",
  "Side Table", "Lamp", "Coat Stand",
  "Shelves", "Wine Rack", "Coffee Table"
]

item_description = 
  "Contemporary designers explore new technologies, experiment with materials, 
  and rely on cutting-edge fabrication techniques. Zaha Hadid and Frank Gehry 
  create works that are conceived in virtual modeling programs and fabricated using 
  modern techniques such as 3D printing and laser cutting. Others are part of a 
  shift toward DIY, with designers like Wendell Castle emphasizing a return to 
  hand-craftsmanship and sculptural form in their work."

status = [
  "Donated",
  "Decorated"
]

puts "Creating users..."

5.times {
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
    biography: artist_biography
  )
}

puts "Creating Items..."

15.times {
  Item.create!(
    category: item_category.sample,
    name: "Contemporary upholstered bench with wood detail",
    description: item_description,
    color: Faker::Color.color_name,
    status: status.sample
  )
}