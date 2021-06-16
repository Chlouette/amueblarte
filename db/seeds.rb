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
FavoriteArtist.destroy_all
FavoriteItem.destroy_all
Artist.destroy_all
Booking.destroy_all
Item.destroy_all
User.destroy_all

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
  "pending",
  "sold",
  "delivered"
]

puts "Creating Users and Artists..."


def add_photo_to_user(user, img_url)
  img = URI.open(img_url)
  user.photo.attach(io: img, filename: img_url, content_type: 'image/png')
  user.save
end

puts "Creating James..."

user = User.create!(
  first_name: 'James',
  last_name: 'Jameson',
  email: 'james@gmail.com',
  password: '123456',
  address: Faker::Address.full_address
)
add_photo_to_user(user, 'https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDIwfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60' )

puts "Created James"

puts "Creating Chloe..."

user = User.create!(
  first_name: 'Chloe',
  last_name: 'Chloes',
  email: 'chloe@test.com',
  password: '123456',
  address: Faker::Address.full_address
)
add_photo_to_user(user, 'https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDIwfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60' )

puts "Created Chloe"

puts "Creating Emily..."

user = User.create!(
  first_name: 'Emily',
  last_name: 'O\'Emily',
  email: 'emily@test.com',
  password: '123456',
  address: Faker::Address.full_address
)
add_photo_to_user(user, 'https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDIwfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60' )

puts "Created Emily"

puts "Creating Veni..."

user = User.create!(
  first_name: 'Veni',
  last_name: 'Venson',
  email: 'veni@test.com',
  password: '123456',
  address: Faker::Address.full_address
)
add_photo_to_user(user, 'https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDIwfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60' )

puts "Created Veni"

puts "Creating User1..."


user = User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: '123456',
  address: Faker::Address.full_address
)
add_photo_to_user(user, 'https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDIwfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60' )

puts "Creating User2..."
user = User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: '123456',
  address: Faker::Address.full_address
)
add_photo_to_user(user,'https://images.unsplash.com/photo-1601931935821-5fbe71157695?ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE5fHx8ZW58MHx8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60')

puts "Creating User3..."
user = User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: '123456',
  address: Faker::Address.full_address
)
add_photo_to_user(user, 'https://images.unsplash.com/photo-1514222709107-a180c68d72b4?ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE4fHx8ZW58MHx8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60')

puts "Creating Artist1..."

  user = User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: '123456',
    address: Faker::Address.full_address
  )
  Artist.create!(
    biography: 'Contemporary realist painter who lives and works in Houston, Texas. A native of Barranquitas, Puerto Rico, her colorful paintings pay homage to her homeland.',
    user: user
  )
  add_photo_to_user(user, 'https://images.unsplash.com/photo-1609010697446-11f2155278f0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE2fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60')

puts "Creating Artist2..."

  user = User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: '123456',
    address: Faker::Address.full_address
  )
  Artist.create!(
    biography: 'His personal graffitis were quickly noticed for their tribal signs and naïve characters. Criticizing consumerism and the exclusion of ethnic communities, Basquiat has his first exhibition at the age of 21.',
    user: user
  )
  add_photo_to_user(user, 'https://images.unsplash.com/photo-1534180477871-5d6cc81f3920?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE3fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60')

puts "Creating Artist3..."

  user = User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: '123456',
    address: Faker::Address.full_address
  )
  Artist.create!(
    biography: 'Beginning his career in advertising, he became world famous in the 1960s thanks to his screen prints of mass products, then eventually became one of the most iconic artists of all time. ',
    user: user
  )
  add_photo_to_user(user, 'https://images.unsplash.com/photo-1506634572416-48cdfe530110?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE0fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60')

puts "Creating Artist4..."

  user = User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: '123456',
    address: Faker::Address.full_address
  )
  Artist.create!(
    biography: 'At a young age, he acquired important notoriety in Northern Italy thanks to his realistic style, characterized by his great gentleness and harmony of shapes and colors. ',
    user: user
  )
  add_photo_to_user(user, 'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDExfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60')

puts "Creating Artist 5..."

  user = User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: '123456',
    address: Faker::Address.full_address
  )
  Artist.create!(
    biography: 'The violence of her scenes, depicting courageous, active women, taking their destiny into their own hands, often earned her the label of feminist artist before her time!',
    user: user
  )
  add_photo_to_user(user, 'https://images.unsplash.com/photo-1474176857210-7287d38d27c6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDEwfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60')

  puts "Creating Artist 6..."

    user = User.create!(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      email: Faker::Internet.email,
      password: '123456',
      address: Faker::Address.full_address
    )
    Artist.create!(
      biography: 'Her painting is deeply poetic and inspired by Mexican folklore. This activity has also been the way enabling her to express her suffering through dreamlike worlds.',
      user: user
    )
    add_photo_to_user(user, 'https://images.unsplash.com/photo-1560250097-0b93528c311a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDl8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60')

  puts "Creating Artist 7..."

    user = User.create!(
      first_name: 'January',
      last_name: 'Fisher',
      email: 'januaryfisher@gmail.com',
      password: '123456',
      address: '100 Picasso Strasse, London, E2 4DY'
    )
    Artist.create!(
      biography: 'During the first decade of the 20th century, his style changed as he experimented with different theories, techniques, and ideas.',
      user: user
    )
    add_photo_to_user(user, 'https://images.unsplash.com/photo-1545167622-3a6ac756afa4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDZ8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60')

  puts "Creating Artist 8..."

    user = User.create!(
      first_name: 'Claude',
      last_name: 'Monet',
      email: Faker::Internet.email,
      password: '123456',
      address: Faker::Address.full_address
    )
    Artist.create!(
      biography: 'Born in Paris, the son of a grocer, Monet grew up in Le Havre. Contact with Eugène Boudin in about 1856 introduced Monet to painting from nature.',
      user: user
    )
    add_photo_to_user(user, 'https://www.claude-monet.com/images/claude-monet-photo.jpg')

  puts "Creating Artist 9..."

    user = User.create!(
      first_name: 'Leonardo',
      last_name: 'da Vinci',
      email: Faker::Internet.email,
      password: '123456',
      address: Faker::Address.full_address
    )
    Artist.create!(
      biography: 'While his fame initially rested on his achievements as a painter, he also became known for his notebooks, in which he made drawings and notes on a variety of subjects, including anatomy, astronomy, botany and paleontology.',
      user: user
    )
    add_photo_to_user(user, 'https://i.natgeofe.com/n/37c3c776-b8cb-4be1-988a-cf593c776b88/01-leonardo-da-vinci-book-talk.jpg?w=795&h=953.75')

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
    add_photo_to_user(user, 'https://ih1.redbubble.net/image.608638179.9013/flat,750x1000,075,f.jpg')


puts "Created Users and Artists"
puts "Creating Items..."
# create items method. just plug in the correct data
  def createItem(img_url, category, name, item_description, item_color, item_status, price)
    item = Item.new(
      category: category,
      name: name,
      description: item_description,
      color: item_color,
      status: item_status,
      user: User.all.sample,
      price_cents: price
    )
    img = URI.open(img_url)
    item.photos.attach(io: img, filename: "#{name}.png", content_type: 'image/png')
    item.save
  end

  puts "Creating Collected items"
  # SOFAS
  createItem(
    'https://scontent.fgva1-1.fna.fbcdn.net/v/t1.6435-9/145225902_1378628172472637_1544494554337367884_n.jpg?_nc_cat=110&ccb=1-3&_nc_sid=8bfeb9&_nc_ohc=BZj9sCYeDggAX86tECV&_nc_ht=scontent.fgva1-1.fna&oh=7b2a2ddac9be31b73a3adf9e594d7347&oe=60CE1A88',
    'Sofa', 
    'Single Seat Sofa',
    'Red Single seat sofa. In poor condition. Bought about ten years ago, hoping someone can bring it back to life.',
    'Red',
    'collected',
    90
  )

  createItem(
    'https://images.saymedia-content.com/.image/c_limit%2Ccs_srgb%2Cq_auto:eco%2Cw_500/MTc0MzU1MzQ0MTM3NTk0MjE2/simple-ways-to-beautify-your-sofa.webp',
    'Sofa', 
    'Brown 3 seat Sofa',
    'Older brown sofa. In poor condition. Bought about ten years ago, hoping someone can bring it back to life.',
    'Brown',
    'collected',
    90
  )

  createItem(
    'https://empire-s3-production.bobvila.com/slides/17062/widened/brown-couch-before.jpg?1591219996',
    'Sofa', 
    'Old Sofa',
    'Old family sofa, has not be used in years, looking to donate it to a better place.',
    'Brown',
    'collected',
    90
  )

  # CHAIRS
    createItem(
      'https://i.ebayimg.com/00/s/NzY4WDEwMjQ=/z/l6wAAOSwhWxgudc5/$_86.JPG',
      'Chair', 
      'Riser/recliner chair',
      'Electric riser /recliner armchair. In excellent condition. Bought about ten months ago but only used for about three',
      'Beige',
      'collected',
      4356
    )

    createItem(
      'https://i.ebayimg.com/00/s/MTAyNFg3Njg=/z/WYkAAOSwh-ZgiTCI/$_86.JPG',
      'Chair', 
      'Lovely vintage chair',
      'Beautiful vintage chair

      This has been painted in dark grey and then dry brushed with a lighter grey to give it the most amazing texture. It looks like it’s made of stone.',
      'Dark Grey',
      'collected',
      7865
    )

    createItem(
      'https://i.ebayimg.com/00/s/NjAwWDgwMA==/z/728AAOSwFOZgwNBG/$_86.PNG',
      'Chair', 
      'Pair of old chairs',
      'Two dining chairs with coil sprung/webbing. In reasonable condition.',
      'Brown',
      'collected',
      1234
    )

  # TABLES
    createItem(
      'https://i.ebayimg.com/00/s/NTc2WDEwMjQ=/z/TWwAAOSwf0ZguMYu/$_86.JPG',
      'Table', 
      'Old Sewing table',
      'Solid wood top on old sewing table metal frame with pedal. Rubber pads at end of legs.

      Table in excellent condition',
      'Brown',
      'collected',
      2834
    )

    createItem(
      'https://i.ebayimg.com/00/s/NzY1WDEwMjQ=/z/V1YAAOSwna5gnjSg/$_86.JPG',
      'Table', 
      'Nested Tables',
      'Oak veneer nest of tables with glass insets. The smaller of the two is damaged which could be repaired with a new veneer strip.',
      'Brown',
      'collected',
      1596
    )

    createItem(
      'https://i.ebayimg.com/00/s/MTAyNFg4MjI=/z/i7kAAOSwfWtgwfMJ/$_86.JPG',
      'Table', 
      'Adjustable Round Table',
      'Some chips and scratches

      Apart from that in solid and sturdy condition and structurally sound',
      'Metallic, Black',
      'collected',
      9846 
    )

    createItem(
      'https://i.ebayimg.com/00/s/MTAyNFg1NzY=/z/DJQAAOSw6m1gwfHA/$_86.JPG',
      'Table', 
      'Nest of 3 Glass Top Coffee Tables',
      'Nest of 3 tables, mahogany colour wood, gold inlay and glass inset. Stack beautifully, 3 very handy sizes. Slight damage on base of middle sized one at base, shown in photo.',
      'Mahogany',
      'collected',
      9573
    )

  # DRAWERS
    createItem(
      'https://i.ebayimg.com/00/s/MTAyNFg0NzM=/z/QGAAAOSwUP1gwcAt/$_86.JPG',
      'Drawers', 
      'Chest of Drawers',
      'Pine Chest of Drawers. Sturdy made, good quality drawers. No damage, has been used, few areas needs rubbing down and rewaxing.',
      'Light Brown',
      'collected',
      9999
    )

    createItem(
      'https://www.loveourreallife.com/wp-content/uploads/2017/07/Master-nightstand-before.jpg',
      'Drawers', 
      'Master Nightstand',
      'Amber Wood Chest of Drawers. Fiar condition. Missing Handles, has been used, few areas needs rubbing down and rewaxing.',
      'Light Brown',
      'collected',
      9999
    )

  # COAT STANDS
    createItem(
      'https://i.ebayimg.com/00/s/MTAyNFg3Njg=/z/CnAAAOSw~QNguLrx/$_86.JPG',
      'Coat Stand', 
      'Hat/Coat Stand',
      'The perfect way to store your hat collection or just add a little extra character to your hallway, and somewhere to put those coats when you come in.',
      'Mahogany',
      'collected',
      9878
    )

    createItem(
      'https://i.ebayimg.com/00/s/MTAyNFg3Njg=/z/uAYAAOSwX4dgwesB/$_86.JPG',
      'Coat Stand', 
      'Coat Stand',
      'Solid wood coat stand, really great condition.
      Top part can lift off as shown so can fit in a car!',
      'Light Brown',
      'collected',
      9900
    )

  # STOOLS
    createItem(
      'https://i.ebayimg.com/00/s/MTAyNFg3Njg=/z/b2oAAOSw2ZNgvysr/$_86.JPG',
      'Stool', 
      'Piano Stool',
      'Fine mahogany piano stool, recently re-upholstered. Very comfortable slightly angled seat, perfect for playing the piano. Music storage inside.',
      'Mahogany',
      'collected',
      3785
    )

    createItem(
      'https://i.ebayimg.com/00/s/ODAwWDYwMA==/z/PegAAOSws7dgwfjD/$_86.PNG',
      'Stool', 
      'Storage Stool',
      'DFS Storage foot stool in very good condition, taking up too much room and not using it for any reason.',
      'Grey',
      'collected',
      6789
    )

    # CUPBOARD
    createItem(
      'https://www.loveourreallife.com/wp-content/uploads/2017/07/Master-Armoire-before.jpg',
      'Cupboard', 
      'Master Bedroom Armoire Cupboard',
      'Large Wooden framed master Armoire for the bedroom. It is in good condition and want it to be used.',
      'Oak Wood',
      'collected',
      9017
    )

    createItem(
      'https://images.unsplash.com/photo-1601779748927-14a098baa1b5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=317&q=80',
      'Cupboard', 
      'Rusty Old Cupboard',
      'Rusty Metal frame Wardrobe.',
      'Oak Wood',
      'collected',
      9017
    )

    # SIDE TABLE
    createItem(
      'https://images.squarespace-cdn.com/content/v1/5b8f7fb6f93fd435ba55bd5c/1538538645757-AVXTTO33Y8GPNCAZUQY4/ke17ZwdGBToddI8pDm48kNiEM88mrzHRsd1mQ3bxVct7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0s0XaMNjCqAzRibjnE_wBlkZ2axuMlPfqFLWy-3Tjp4nKScCHg1XF4aLsQJlo6oYbA/Wooden+Side+Table.jpg?format=750w',
      'Side Table', 
      'Bedside Table',
      'In good condition, but I have no use for it anymore sadly.',
      'Oak Wood',
      'collected',
      9017
    )

    createItem(
      'https://www.corycaantiques.co.uk/upload/images/shopprod/11269/old-pine-side-table---2-drawers_11269_main_size3.jpg',
      'Side Table', 
      'Table',
      'A family item we have had for years but sadly I do not have any use for it anymore',
      'Oak Wood',
      'collected',
      9017
    )

    # SHELVES
    
    createItem(
      'https://www.andythornton.com/uploads/images/presets/product-page-image/store/products/p1apkqkdk0i483nv1kip1mtasa01.JPG',
      'Shelves', 
      'Storage Shelving',
      'A family item we have had for years but sadly I do not have any use for it anymore',
      'Oak Wood',
      'collected',
      9017
    )

    createItem(
      'http://4.bp.blogspot.com/_6Qje0ALI01o/R6xWauqvlmI/AAAAAAAAAN8/EzydoNuD0hQ/s1600-h/shelvesb.jpg',
      'Shelves', 
      'Storage Shelving',
      'A family item we have had for years but sadly I do not have any use for it anymore',
      'Oak Wood',
      'collected',
      9017
    )
  
    createItem(
      'https://www.georgestreet.co.uk/images/detailed/1/old-charm-bookcase-2665-868-868_tec2-iy.jpg',
      'Shelves', 
      'Storage Shelving',
      'A family item we have had for years but sadly I do not have any use for it anymore',
      'Oak Wood',
      'collected',
      9017
    )

  puts "Collected items created"

  puts "Creating for sale items..."

  # Drawers
  createItem(
    'https://ksassets.timeincuk.net/wp/uploads/sites/56/2021/04/DIY-Rattan-Cupboard-Furniture-and-Choice-320x320.jpg',
    'Drawers', 
    'Sideboard',
    'It’s hard to believe this was once a plain white sideboard?! An incredibly stylish addition for any hallway, living room or even bedroom – and at a fraction of the price of buying a similar design from scratch.',
    'Black, White',
    'for sale',
    3700
  )

  createItem(
    'https://ksassets.timeincuk.net/wp/uploads/sites/56/2021/04/Annie-Sloan-Countryside-Bird-stencil-320x320.jpg',
    'Drawers', 
    'Green Countryside Sideboard',
    'A sizeable bit of furniture with lovely countryside stencilling. A real addition to any kitchen or hallway',
    'Black, White',
    'for sale',
    3500
  )

  createItem(
    'https://ksassets.timeincuk.net/wp/uploads/sites/56/2018/08/Ideal-Home-upcycled-furniture-320x320.jpg',
    'Drawers', 
    'Childrens Chest of Drawers',
    'Bright colours, perfect for a child\s bedroom. Colourful, artistic, cheerful.',
    'Pink, Yellow, White',
    'for sale',
    6135
    )
    
    createItem(
      'https://www.loveourreallife.com/wp-content/uploads/2017/07/Master-Night-stand-after.jpg',
      'Drawers', 
      'Master Night Stand',
      'Modern, upcycled Bedroom Night Stand. Recrafted chrome silver details with sleak white/grey finish.',
      'Muted Grey, white',
      'for sale',
      5500
      )
    
    # Shelves
    createItem(
      'https://ksassets.timeincuk.net/wp/uploads/sites/56/2017/09/crate-ideas-chi-Dan-Duchars_CrateStorage-389x500.jpg',
      'Shelves', 
      'Wooden box shelves',
      'Use them to curate thoughtful wall displays or as bookshelves. Just be sure to secure them safely, don’t overload them if the wall fixings aren’t strong enough to take the weight.',
      'Pastel',
      'for sale',
      9455
      )
      
      createItem(
        'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/hutch-after-upcycled-furniture-1552943774.jpg?crop=0.791xw:0.884xh;0.0900xw,0.0773xh&resize=980:*',
        'Shelves', 
        'Two-Tone Bookcase',
        'For a fun and feminine look, we picked pink accessories, gray pain, and Hygge & West Nethercote wallpaper. Traditional blue paint and striped paper lends itself to nautical vibes.',
        'Light Brown, White',
        'for sale',
        6599
      )

      createItem(
        'https://images.unsplash.com/photo-1593085260707-5377ba37f868?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=537&q=80',
        'Shelves', 
        'Light Wood Shelves',
        'Fresh and clean style shelves with a bonze decor on the bottom. Used in a modern home.',
        'Light Brown, bronze',
        'for sale',
        3457
      )

  # Side Table
  createItem(
    'https://ksassets.timeincuk.net/wp/uploads/sites/56/2019/07/Ideal-Home-CHI-upcycled-crates-517x620.jpg',
    'Side Table', 
    'Rustic Boxed Side Table',
    'he open element of the design is ideal for storing everything you’d need to stow neatly beside the bed, from books to sleep apparatus. The distressed nature of the wooden crates is super stylish.',
    'Light Brown',
    'for sale',
    7680
  )

  createItem(
    'https://ksassets.timeincuk.net/wp/uploads/sites/56/2020/11/Upcycled-bedside-table-320x320.jpg',
    'Side Table', 
    'Dusky Side Table',
    'The paint of choice for this upcycling job is Frenchic,  in a beautiful on-trend shade of  Dusky Blush pink.',
    'Pink',
    'for sale',
    2385
    )

    createItem(
      'https://images.unsplash.com/photo-1589565176356-a586e73f56f8?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80',
      'Side Table', 
      'Light Wood Mini Side Table',
      'The Table is a small feature used for styling plants, decor, art. Polished and restored.',
      'Light Wood',
      'for sale',
      1300
      )
    
    # Chairs
    createItem(
      'https://ksassets.timeincuk.net/wp/uploads/sites/56/2021/04/Annie-Sloan-Upcycled-Mid-Century-Chairs-320x320.jpg',
      'Chair', 
      'Jungle print chairs',
      'Look away now if you LOVE Mid-century furniture  (sorry!). But if older design is not your thing.',
      'Blue, Green, Brown',
      'for sale',
      3568
      )
      
    createItem(
      'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/upcycled-furniture-armchair-after-1553007629.jpg?crop=0.936xw:0.963xh;0.0208xw,0&resize=980:*',
      'Chair', 
      'Dalmation Armchair',
      'We picked Black Dalmatian Dots by Bliss Design Studio on Spoonflower for this piece, a spot-on print whether you style it with graphic, colorful extras or girly, glam accessories.',
      'Black, White',
      'for sale',
      4399
    )
    
    createItem(
      'https://images.unsplash.com/photo-1611464908623-07f19927264e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=334&q=80',
      'Chair', 
      'Green and White Futuristic Chair',
      'Modern white base chair, renovated with an urban futuristic feel for a light airy space. Fabric replaced and Legs have been reworked.',
      'Green, White',
      'for sale',
      6599
    )

    # Cupboard
    createItem(
      'https://ksassets.timeincuk.net/wp/uploads/sites/56/2021/01/Pink-pianted-wardrobe-320x320.jpg',
      'Cupboard', 
      'Pink heirloom wardrobe',
      'This wardrobe transformation is the work of Ideal Home’s Editor Heather Young who has upcycled an old family heirloom for her young daughter’s room.',
      'Pink',
      'for sale',
      7458
    )

    createItem(
      'https://www.loveourreallife.com/wp-content/uploads/2017/07/Master-Armoire-after2.jpg',
      'Cupboard', 
      'Master Bedroom Large Armoire',
      'This wardrobe transformation is an upcycled an old family heirloom, using shades of blue and white to blend seamlessly into a modern Home.',
      'White grey',
      'for sale',
      9087
    )

    createItem(
      'https://images.unsplash.com/photo-1595428774223-ef52624120d2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80',
      'Cupboard', 
      'Large Wardrobe',
      'This wardrobe transformation is an upcycled an old family heirloom, using shades of blue and white to blend seamlessly into a modern Home.',
      'Light Brown',
      'for sale',
      7600
    )

    createItem(
      'https://images.unsplash.com/photo-1599202480744-c2744ffd2b54?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80',
      'Cupboard', 
      'White Modern Storage Cupboard',
      'This wardrobe transformation is an upcycled an old family heirloom, using shades of blue and white to blend seamlessly into a modern Home.',
      'White',
      'for sale',
      8900
    )
      
  # Coat Stand
  createItem(
    'https://ksassets.timeincuk.net/wp/uploads/sites/56/2021/04/Reclaimed-wooden-peg-rail-320x320.jpg',
    'Coat Stand', 
    'Homemade Storage Hooks',
    'Any piece of salvaged wood has the potential to be a stylish set of wall hooks. Allowing the beauty of layers of paint on a plank of old wood there’s no need to sand or treat.',
    'Light Brown, Multicolored',
    'for sale',
    2300
  )

  createItem(
    'https://cosmos2.my-store.ch/api/img?p=products/2021/6/FF07B494-8CBF-4E28-BE57-56EFBAA8C2EF/9735592_1&st=11&v=1623235254',
    'Coat Stand', 
    'Modern Black frame Coat Stand',
    'Modern design, 2 Shelves, 1 rail, Offers a lot of space to put everything neatly away.',
    'Black, Light Brown',
    'for sale',
    1599
  )

  createItem(
    'https://static.digitecgalaxus.ch/Files/2/2/2/0/1/7/2/0/TecTake-Garderobenstaender-401033-1.jpg?impolicy=ProductTileImage&resizeWidth=436&resizeHeight=335&quality=high&cropWidth=436&cropHeight=335',
    'Coat Stand', 
    'Brass Coat Stand',
    'Refurbished coat stand, practical, easy.',
    'Black, Light Brown',
    'for sale',
    600
  )

  # Sofa
  createItem(
    'https://ksassets.timeincuk.net/wp/uploads/sites/56/2021/04/Built-in-wooden-seating-320x320.jpg',
    'Sofa', 
    'Bespoke Corner Sofa',
    'Bespoke furniture is always a great way of utilising awkward spaces, such as alcoves, but building on specification is not a cheap option. Using offcuts of wood from other projects, or sourcing wooden planks second hand, you can create a totally bespoke seating arrangement.',
    'Light Brown, Slate',
    'for sale',
    5689
  )

  createItem(
    'https://images.unsplash.com/photo-1555041469-a586c61ea9bc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80',
    'Sofa', 
    'Bespoke Dark Green Velour Sofa',
    'Bespoke furniture is always a great way of utilising awkward spaces, such as alcoves, but building on specification is not a cheap option. Using offcuts of wood from other projects, or sourcing wooden planks second hand, you can create a totally bespoke seating arrangement.',
    'Dark Green',
    'for sale',
    12345
  )

  createItem(
    'https://images.unsplash.com/photo-1491926626787-62db157af940?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80',
    'Sofa', 
    'Light Grey Shell Sofa',
    'Sea Shell inspired silver/grey Sofa. A feature piece in a modern feel space. Lightening up a space to feel like you are at home.',
    'Silver, Grey',
    'for sale',
    15690
  )

  # Table
  createItem(
    'https://ksassets.timeincuk.net/wp/uploads/sites/56/2021/03/Pallet-coffee-table-320x320.jpg',
    'Table', 
    'Craft Coffee Table',
    'Mosiac effect coffee tablel made from pallets. Looks great in any living room',
    'Light Brown, White',
    'for sale',
    4258
  )

  createItem(
    'https://images.unsplash.com/photo-1604061986761-d9d0cc41b0d1?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=333&q=80',
    'Table', 
    'Urban Coffee Table',
    'Low, fresh polish wood top coffee table. Black metal legs as a feature statement piece. Looks great in any living room',
    'Amber Brown, Black',
    'for sale',
    7800
  )

  createItem(
    'https://images.unsplash.com/photo-1565791380713-1756b9a05343?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=80',
    'Table', 
    'Wood panel Dining Table',
    'Fresh look, pine, 4 stand art decor table.',
    'Pine Wood',
    'for sale',
    5906
  )

  # stool
  createItem(
    'https://images.unsplash.com/photo-1536639240649-1f0979e7993d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=450&q=80',
    'Stool', 
    'Vintage Stool',
    'Urban recycled Stool, rustic cottage core feel. Bronze Foot for details.',
    'Off white, Cream',
    'for sale',
    2700
  )

  createItem(
    'https://images.unsplash.com/photo-1620826641212-04c74161116c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=282&q=80',
    'Stool', 
    'Dark Grey Urban Stool',
    'Tall Dark Stool, Sturdy high quality feel, lovingly restored looking for a new home.',
    'Dark Grey',
    'for sale',
    3100
  )

  puts "For Sale items created"
  
  