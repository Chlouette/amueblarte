# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts "Cleaning database..."
Artist.destroy_all
Item.destroy_all
User.destroy_all
Booking.destroy_all
FavoriteArtist.destroy_all
FavoriteItem.destroy_all

artist_biography = 
  "Pablo Ruiz Picasso was a Spanish painter, sculptor, printmaker, 
  ceramicist and theatre designer."

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

puts "Creating Users..."

puts "Creating Artists..."

5.times {
  user = User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: '123456',
    address: Faker::Address.full_address
  )
  Artist.create!(
    biography: artist_biography,
    user: user
  )
}

puts "Creating Items..."

15.times {
  Item.create!(
    category: item_category.sample,
    name: "Contemporary upholstered bench with wood detail",
    description: item_description,
    color: Faker::Color.color_name,
    status: status.sample,
    user: User.all.sample
  )
}