# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Deleting all bookings, spaces and users...'
Booking.delete_all
Space.delete_all
User.delete_all

puts 'Seeding users...'

user_tokyo1 = User.create!(
  email: "hiroshi@hiroshi.com",
  first_name: "Hiroshi",
  last_name: "Kobayashi",
  password: "123456"
  )

user_tokyo2 = User.create!(
  email: "yoko@yoko.com",
  first_name: "Yoko",
  last_name: "Kasai",
  password: "123456"
  )

user_tokyo3 = User.create!(
  email: "tomoko@tomoko.com",
  first_name: "Takashi",
  last_name: "Tanaka",
  password: "123456"
  )

user_berlin1 = User.create!(
  email: "ben@ben.com",
  first_name: "Ben",
  last_name: "Gordon",
  password: "123456"
  )

user_berlin2 = User.create!(
  email: "Euan@euan.com",
  first_name: "Euan",
  last_name: "Gillespie-Taylor",
  password: "123456"
  )

user_berlin3 = User.create!(
  email: "lukas@lukas.com",
  first_name: "Lukas",
  last_name: "Lukas Hortsmann",
  password: "123456"
  )

puts 'Seeding spaces'

space_tokyo1 = Space.create!(
  title: 'Ex-Shop turned Gallery Space in Central Tokyo',
  floor_space: 20,
  price_per_day: 40,
  description: "The space is a former store in central tokyo, in Azabu Juban. The first floor has been cleared out and has made into a gallery space. It's equipped with lighting. Suitable for small shows.",
  address: "2 Chome Azabujuban, Minato City, Tokyo 106-0045, Japan",
  internet: true,
  availability_status: true,
  heating: true,
  lighting: true,
  user: user_tokyo1
)

space_tokyo2 = Space.create!(
  title: 'Charming Ground Floor Restaurant in Prime Location',
  floor_space: 30.7,
  price_per_day: 34,
  description: "Former restaurant space with entrance facing the street. Equipped with Kitchen, and available for use while waiting for renovation works to start.",
  address: "4-chōme-9 Minamiazabu, Minato City, Tokyo 106-0047, Japan",
  internet: false,
  availability_status: true,
  heating: true,
  lighting: false,
  user: user_tokyo1
)

space_tokyo3 = Space.create!(
  title: 'Bright, Cozy, and Central in Tokyo',
  floor_space: 30,
  price_per_day: 33,
  description: "The ground floor space is equipped with a large kitchen and one small bathroom, it also has some chairs, and a lounge area in the back.",
  address: "2-chōme-7 Mita, Minato City, Tokyo 108-0073, Japan",
  internet: false,
  availability_status: true,
  heating: false,
  lighting: true,
  user: user_tokyo1
)

space_tokyo4 = Space.create!(
  title: 'Downtown Tokyo Gallery Space',
  floor_space: 15,
  price_per_day: 200,
  description: "Gallery space in Asakusa with a large window facing a busy street in the historical part of Tokyo. Perfect for small exhibitions. Available for long-term rent.",
  address: "5 Chome Asakusabashi, Taito City, Tokyo 111-0053, Japan",
  internet: false,
  availability_status: true,
  heating: true,
  lighting: true,
  user: user_tokyo2
)

space_tokyo5 = Space.create!(
  title: 'Charming City Spot - w/ Kitchen',
  floor_space: 150,
  price_per_day: 300,
  description: "The space is located in central Tokyo. Equipped with a small but working kitchen and large open space to fit about 50 people. ",
  address: "Kanda Konyacho, Chiyoda City, Tokyo 101-0035, Japan",
  internet: false,
  availability_status: true,
  heating: true,
  lighting: true,
  user: user_tokyo2
)

space_tokyo6 = Space.create!(
  title: 'Former Retail Space in Tokyo',
  floor_space: 109,
  price_per_day: 400,
  description: "The space is located in a prime location in the quiet neighbourhood of Tokyo. The space has no kitchen -  it has got a fridge, a kettle and a bathroom with shower",
  address: "1 Chome Kanda Sudacho, Chiyoda City, Tokyo 101-0041, Japan",
  internet: true,
  availability_status: true,
  heating: true,
  lighting: true,
  user: user_tokyo3
)

space_tokyo7 = Space.create!(
  title: 'Whole Store Space in Tokyo center',
  floor_space: 46,
  price_per_day: 300,
  description: "On the groundfloor corner of a historical building, the space is unique with it's wooden walls and retro style store front. Equipped with a small office in the back. Available for rent through the whole winter.",
  address: "1 Chome Uchikanda, Chiyoda City, Tokyo 101-0047, Japan",
  internet: true,
  availability_status: true,
  heating: false,
  lighting: true,
  user: user_tokyo3
)

space_tokyo8 = Space.create!(
  title: 'Western Toyko Perfect Retails Space Next To Subway',
  floor_space: 75,
  price_per_day: 400,
  description: "Empty retails space open for short-term pop-up/exhibitions. Cozy neighbourhood with galleries and cafes near by. Equipped with a small kitchen in the back.",
  address: "2 Chome Mejiro, Toshima City, Tokyo 171-0031, Japan",
  internet: false,
  availability_status: true,
  heating: false,
  lighting: true,
  user: user_tokyo3
)

space_tokyo9 = Space.create!(
  title: 'Gritty industrial site in Tokyo',
  floor_space: 200,
  price_per_day: 500,
  description: "Privately owned warehouse space waiting for large scale renovation in 2022. Perfect for parties and largescale installations.",
  address: "1 Chome Miyoshi, Koto City, Tokyo 135-0022, Japan",
  internet: false,
  availability_status: true,
  heating: true,
  lighting: true,
  user: user_tokyo3
)

space_tokyo10 = Space.create!(
  title: 'Gritty industrial site in Tokyo',
  floor_space: 200,
  price_per_day: 500,
  description: "Privately owned warehouse space waiting for large scale renovation in 2022. Perfect for parties and largescale installations.",
  address: "3 Chome Ikebukuro, Toshima City, Tokyo 171-0014, Japan",
  internet: false,
  availability_status: true,
  heating: true,
  lighting: true,
  user: user_tokyo3
)

space_tokyo11 = Space.create!(
  title: 'Residencial and Quiet but Busy Area of Town',
  floor_space: 200,
  price_per_day: 500,
  description: "Near Tokyo bay, in an residential area. Quiet, but perfect for small shows",
  address: "6 Chome Ojima, Koto City, Tokyo 136-0072, Japan",
  internet: false,
  availability_status: true,
  heating: true,
  lighting: true,
  user: user_tokyo3
)

space_tokyo12 = Space.create!(
  title: 'Big Space by Tokyo Bay',
  floor_space: 200,
  price_per_day: 500,
  description: "Privately owned warehouse space waiting for large scale renovation in 2022. Perfect for parties and largescale installations.",
  address: "4 Chome Toyo, Koto City, Tokyo 135-0016, Japan",
  internet: false,
  availability_status: true,
  heating: true,
  lighting: true,
  user: user_tokyo3
)


berlin_space1 = Space.create!(
  title: 'Large Store Window of my Pharmacy',
  floor_space: 65,
  price_per_day: 30,
  description: "The store front window facing the shopping street has a antique feel. Perfect for anyone wanting to showcase their craft. Installation can only be done during open hours. ",
  address: "Manteuffelstraße 106-110, 10997 Berlin",
  internet: false,
  availability_status: true,
  heating: true,
  lighting: false,
  user: user_berlin1
)

berlin_space2 = Space.create!(
  title: 'Attractive large space in the heart of Berlin',
  floor_space: 900,
  price_per_day: 40,
  description: "Former retail space open for use while the building waits for renovation works in 2021",
  address: "Storkower Str. 50, 10409 Berlin",
  internet: false,
  availability_status: true,
  heating: true,
  lighting: true,
  user: user_berlin1
)

berlin_space3 = Space.create!(
  title: "Luiminous pop-up space with Kitchen",
  floor_space: 2,
  price_per_day: 10,
  description: "Bright space equipped with large kitchen for professional chefs. Available until the demolishing of the building",
  address: "108 Boulevard de Ménilmontant, 75020 Paris, France",
  internet: false,
  availability_status: true,
  heating: false,
  lighting: true,
  user: user_berlin1
)

berlin_space4 = Space.create!(
  title: 'Inviting storefront in charming Prenzlauer Berg',
  floor_space: 4,
  price_per_day: 13,
  description: "Well situated storefront, suitable for retail, art exhibition etc.",
  address: "Marienburger Str. 16, 10405 Berlin",
  internet: true,
  availability_status: true,
  heating: true,
  lighting: true,
  user: user_berlin1
)

berlin_space5 = Space.create!(
  title: 'Large space in former industrial site',
  floor_space: 6,
  price_per_day: 29,
  description: "Gritty, spacious space in trendy Neukölln. Perfect for events, parties, or exhibitions",
  address: "Prenzlauer Allee 22, 10405 Berlin",
  internet: true,
  availability_status: true,
  heating: false,
  lighting: true,
  user: user_berlin2
)

berlin_space6 = Space.create!(
  title: 'Small shop on busy street in Mitte',
  floor_space: 10,
  price_per_day: 40,
  description: "Currently inbetween tenants, this store is suitable for pop-ups",
  address: "Neustädtische Kirchstraße 14-23, 10117 Berlin",
  internet: true,
  availability_status: false,
  heating: true,
  lighting: true,
  user: user_berlin2
)

berlin_space7 = Space.create!(
  title: 'Charming space in central Berlin',
  floor_space: 12,
  price_per_day: 17,
  description: "Previously a bakery, this space has plenty of character",
  address: "Dorotheenstraße 89-90, 10117 Berlin",
  internet: true,
  availability_status: true,
  heating: true,
  lighting: true,
  user: user_berlin2
)

berlin_space8 = Space.create!(
  title: 'Great retail outdoor space in Berlin',
  floor_space: 40,
  price_per_day: 46,
  description: "Fromer retail space in quiet courtyard, with ample outdoor space available for events/pop-ups",
  address: "Stauffenbergstraße 4-6, 10785 Berlin",
  internet: true,
  availability_status: true,
  heating: false,
  lighting: true,
  user: user_berlin2
)

berlin_space9 = Space.create!(
  title: 'Modern storefront in vibrant Mitte',
  floor_space: 47,
  price_per_day: 50,
  description: "Weinmeisterstrasse 13, Berlin, 10437 Berlin",
  address: "Located in upscale part of town, the space is perfect for retail pop-ups",
  internet: true,
  availability_status: false,
  heating: true,
  lighting: true,
  user: user_berlin3
)

berlin_space10 = Space.create!(
  title: 'Inviting storefront in charming Prenzlauer Berg',
  floor_space: 32,
  price_per_day: 24,
  description: "Well situated storefront, suitable for retail, art exhibition etc.",
  address: "Eberswalder Str. 33, 10437 Berlin",
  internet: true,
  availability_status: true,
  heating: true,
  lighting: true,
  user: user_berlin3
)

berlin_space11 = Space.create!(
  title: '1920s store front in vibrant neighbourhood',
  floor_space: 24,
  price_per_day: 27,
  description: "Beautiful bookstore offing half of it's space to anyone wanting to show their work. Large window facing a busy streen in the trendy area of Berlin.",
  address: "Skalitzer Str. 45, 10997 Berlin",
  internet: true,
  availability_status: true,
  heating: true,
  lighting: false,
  user: user_berlin3
)

berlin_space12 = Space.create!(
  title: 'Gritty formal industrial site in Lichtenberg',
  floor_space: 24,
  price_per_day: 27,
  description: "Large site perfect for events in trendy Lichtenburg neighborhood",
  address: "Landsberger Allee 277, Lichtenberg Berlin",
  internet: true,
  availability_status: true,
  heating: true,
  lighting: false,
  user: user_berlin3
)

puts "Created #{User.count} users and #{Space.count} spaces"
