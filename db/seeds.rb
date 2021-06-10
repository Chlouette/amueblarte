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

status = [
  "to be collected",
  "collected",
  "in progress",
  "for sale",
  "sold",
  "delivered"
]

puts "Creating Users and Artists..."

puts "Creating User1..."
user = User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: '123456',
  address: Faker::Address.full_address
)

puts "Creating User2..."
user = User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: '123456',
  address: Faker::Address.full_address
)

puts "Creating User3..."
user = User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: '123456',
  address: Faker::Address.full_address
)

puts "Creating Artist1..."

  user = User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: '123456',
    address: Faker::Address.full_address
  )
  Artist.create!(
    biography: 'Contemporary realist painter who lives and works in Houston, Texas. A native of Barranquitas, Puerto Rico, her colorful paintings pay homage to her homeland. Her distinctive personal style emanates joy and peace and expresses the vibrant spirit and atmosphere of the Caribbean culture.',
    user: user
  )

puts "Creating Artist2..."

  user = User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: '123456',
    address: Faker::Address.full_address
  )
  Artist.create!(
    biography: 'Born in Brooklyn, this African-American with a rebellious temperament left school when he was a teenager to devote himself to his passion: art. His personal graffitis were quickly noticed for their tribal signs and naïve characters. Criticizing consumerism and the exclusion of ethnic communities, Basquiat has his first exhibition at the age of 21. This remarkable arrival brought him to the forefront of the art scene.',
    user: user
  )

puts "Creating Artist3..."

  user = User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: '123456',
    address: Faker::Address.full_address
  )
  Artist.create!(
    biography: 'Beginning his career in advertising, he became world famous in the 1960s thanks to his screen prints of mass products, then eventually became one of the most iconic artists of all time. Duplicating his works in a multitude of flashy colours, he brought art into the category of consumer goods. In order to produce in industrial quantities, he created his Factory in 1964, a giant studio central to New York artistic life. His works are now among the most sought-after within the contemporary art market.',
    user: user
  )

puts "Creating Artist4..."

  user = User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: '123456',
    address: Faker::Address.full_address
  )
  Artist.create!(
    biography: 'At a young age, he acquired important notoriety in Northern Italy thanks to his realistic style, characterized by his great gentleness and harmony of shapes and colors. His achievement was completed in 1508, when Pope Julius II asked him to create monumental frescoes to decorate his apartments in the Vatican.',
    user: user
  )

puts "Creating Artist5..."

  user = User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: '123456',
    address: Faker::Address.full_address
  )
  Artist.create!(
    biography: 'The violence of her scenes, depicting courageous, active women, taking their destiny into their own hands, often earned her the label of feminist artist before her time! Unfortunately, her painting is often interpreted in the light of her personal life. Raped at the age of 19 by her drawing teacher and humiliated by the trial that followed, many art historians justify her choice to paint women in the midst of revenge by her trauma. However, her talent cannot be reduced to the simple representation of strong female subjects. Rather, her subtle and powerful mastery of chiaroscuro must be noted.',
    user: user
  )

  puts "Creating Artist6..."

    user = User.create!(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      email: Faker::Internet.email,
      password: '123456',
      address: Faker::Address.full_address
    )
    Artist.create!(
      biography: 'Her painting is deeply poetic and inspired by Mexican folklore. This activity has also been the way enabling her to express her suffering through dreamlike worlds. Indeed, Frida’s life was full of tragic events, which nevertheless destroyed her unfailing joy of life. At the age of 18, a bus accident seriously injured her spine, crippling her for life and forcing her to wear a metal corset for the rest of her life. Finding refuge in art, she developed a passionate relationship with the artist Diego Riveira. They tried to conceive, but Frida had multiple miscarriages. Her global recognition allowed her to pass to posterity, while constituting a model for many women through her independence and strength of character.',
      user: user
    )

  puts "Creating Artist7..."

    user = User.create!(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      email: Faker::Internet.email,
      password: '123456',
      address: Faker::Address.full_address
    )
    Artist.create!(
      biography: 'During the first decade of the 20th century, his style changed as he experimented with different theories, techniques, and ideas.',
      user: user
    )

  puts "Creating Artist8..."

    user = User.create!(
      first_name: 'Claude',
      last_name: 'Monet',
      email: Faker::Internet.email,
      password: '123456',
      address: Faker::Address.full_address
    )
    Artist.create!(
      biography: 'Born in Paris, the son of a grocer, Monet grew up in Le Havre. Contact with Eugène Boudin in about 1856 introduced Monet to painting from nature. He was in Paris in 1859 and three years later he entered the studio of Charles Gleyre, where he met Pierre-Auguste Renoir, Alfred Sisley and Frédéric Bazille. Edouard Manet was an influence on his figure compositions of the 1860s, while the informal style of his later landscapes originated in works such as "Bathers at La Grenouillère", painted in 1869 when Monet worked with Renoir at Bougival.',
      user: user
    )

  puts "Creating Artist 9..."

    user = User.create!(
      first_name: 'Leonardo',
      last_name: 'da Vinci',
      email: Faker::Internet.email,
      password: '123456',
      address: Faker::Address.full_address
    )
    Artist.create!(
      biography: 'While his fame initially rested on his achievements as a painter, he also became known for his notebooks, in which he made drawings and notes on a variety of subjects, including anatomy, astronomy, botany, cartography, painting, and paleontology.',
      user: user
    )

  puts "Creating Artist 10..."

    user = User.create!(
      first_name: 'Salvador',
      last_name: 'Dali',
      email: Faker::Internet.email,
      password: '123456',
      address: Faker::Address.full_address
    )
    Artist.create!(
      biography: 'Born in Figueres, Catalonia, Dalí received his formal education in fine arts in Madrid. Influenced by Impressionism and the Renaissance masters from a young age, he became increasingly attracted to Cubism and avant-garde movements.',
      user: user
    )


puts "Created Users and Artists"
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