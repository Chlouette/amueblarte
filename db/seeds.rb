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

puts "Creating database..."