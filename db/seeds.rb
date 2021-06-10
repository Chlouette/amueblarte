# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"
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
# create items method. just plug in the correct data
  def createItem(img_url, category, name, item_description, item_color, item_status)
    item = Item.new(
      category: category,
      name: name,
      description: item_description,
      color: item_color,
      status: item_status,
      user: User.all.sample
    )
    img = URI.open(img_url)
    item.photos.attach(io: img, filename: "#{name}.png", content_type: 'image/png')
    item.save
  end

  puts "Creating Collected items"
  # CHAIRS
    createItem(
      'https://i.ebayimg.com/00/s/NzY4WDEwMjQ=/z/l6wAAOSwhWxgudc5/$_86.JPG',
      'Chair', 
      'Riser/recliner chair',
      'Electric riser /recliner armchair. In excellent condition. Bought about ten months ago but only used for about three',
      'Beige',
      'collected' 
    )

    createItem(
      'https://i.ebayimg.com/00/s/MTAyNFg3Njg=/z/WYkAAOSwh-ZgiTCI/$_86.JPG',
      'Chair', 
      'Lovely vintage chair',
      'Beautiful vintage chair

      This has been painted in dark grey and then dry brushed with a lighter grey to give it the most amazing texture. It looks like it’s made of stone.',
      'Dark Grey',
      'collected' 
    )

    createItem(
      'https://i.ebayimg.com/00/s/NjAwWDgwMA==/z/728AAOSwFOZgwNBG/$_86.PNG',
      'Chair', 
      'Pair of old chairs',
      'Two dining chairs with coil sprung/webbing. In reasonable condition.',
      'Brown',
      'collected' 
    )

    # TABLES
    createItem(
      'https://i.ebayimg.com/00/s/NTc2WDEwMjQ=/z/TWwAAOSwf0ZguMYu/$_86.JPG',
      'Table', 
      'Old Sewing table',
      'Solid wood top on old sewing table metal frame with pedal. Rubber pads at end of legs.

      Table in excellent condition',
      'Brown',
      'collected' 
    )

    createItem(
      'https://i.ebayimg.com/00/s/NzY1WDEwMjQ=/z/V1YAAOSwna5gnjSg/$_86.JPG',
      'Table', 
      'Nested Tables',
      'Oak veneer nest of tables with glass insets. The smaller of the two is damaged which could be repaired with a new veneer strip.',
      'Brown',
      'collected' 
    )

    createItem(
      'https://i.ebayimg.com/00/s/MTAyNFg4MjI=/z/i7kAAOSwfWtgwfMJ/$_86.JPG',
      'Table', 
      'Adjustable Round Table',
      'Some chips and scratches

      Apart from that in solid and sturdy condition and structurally sound',
      'Metallic, Black',
      'collected' 
    )

    createItem(
      'https://i.ebayimg.com/00/s/MTAyNFg1NzY=/z/DJQAAOSw6m1gwfHA/$_86.JPG',
      'Table', 
      'Nest of 3 Glass Top Coffee Tables',
      'Nest of 3 tables, mahogany colour wood, gold inlay and glass inset. Stack beautifully, 3 very handy sizes. Slight damage on base of middle sized one at base, shown in photo.',
      'Mahogany',
      'collected' 
    )

    # DRAWERS

    createItem(
      'https://i.ebayimg.com/00/s/MTAyNFg0NzM=/z/QGAAAOSwUP1gwcAt/$_86.JPG',
      'Drawers', 
      'Chest of Drawers',
      'Pine Chest of Drawers. Sturdy made, good quality drawers. No damage, has been used, few areas needs rubbing down and rewaxing.',
      'Light Brown',
      'collected' 
    )

    # COAT STANDS

    createItem(
      'https://i.ebayimg.com/00/s/MTAyNFg3Njg=/z/CnAAAOSw~QNguLrx/$_86.JPG',
      'Coat Stand', 
      'Hat/Coat Stand',
      'The perfect way to store your hat collection or just add a little extra character to your hallway, and somewhere to put those coats when you come in.',
      'Mahogany',
      'collected'
    )

    createItem(
      'https://i.ebayimg.com/00/s/MTAyNFg3Njg=/z/uAYAAOSwX4dgwesB/$_86.JPG',
      'Coat Stand', 
      'Coat Stand',
      'Solid wood coat stand, really great condition.
      Top part can lift off as shown so can fit in a car!',
      'Light Brown',
      'collected'
    )

    # STOOLS

    createItem(
      'https://i.ebayimg.com/00/s/MTAyNFg3Njg=/z/b2oAAOSw2ZNgvysr/$_86.JPG',
      'Stool', 
      'Piano Stool',
      'Fine mahogany piano stool, recently re-upholstered. Very comfortable slightly angled seat, perfect for playing the piano. Music storage inside.',
      'Mahogany',
      'collected'
    )

    createItem(
      'https://i.ebayimg.com/00/s/ODAwWDYwMA==/z/PegAAOSws7dgwfjD/$_86.PNG',
      'Stool', 
      'Storage Stool',
      'DFS Storage foot stool in very good condition, taking up too much room and not using it for any reason.',
      'Grey',
      'collected'
    )
  
  puts "Collected items create"
  
  