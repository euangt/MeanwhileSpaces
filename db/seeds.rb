# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Deleting all spaces and users...'

Space.delete_all
User.delete_all

puts 'Seeding users...'

user1 = User.create!(
  email: "yoko@example.com",
  first_name: "Yoko",
  last_name: "Kasai",
  phone_number: "+49-160-5300-913",
  password: "123456"

  )

user2 = User.create!(
  email: "ben@example.com",
  first_name: "Ben",
  last_name: "Gordon"
  phone_number: "+49-160-5554-200",
  password: "123456"

  )
user3 = User.create!(
  email: "euan@example.com",
  first_name: "Euan",
  last_name: "Gillespie-Taylor",
  phone_number: "+49-160-5554-200",
  password: "123456"

  )
user4 = User.create!(
  email: "max@example.com",
  first_name: "Max",
  last_name: "Glassmacher",
  phone_number: "+49-160-5554-400",
  password: "123456"

  )
user5 = User.create!(
  email: "iri@example.com",
  first_name: "Iri",
  last_name: "Popa",
  phone_number: "+49-160-5554-300",
  password: "123456"

  )
user6 = User.create!(
  email: "valerie@example.com",
  first_name: "Valerie",
  last_name: "Schraauwers",
  phone_number: "+49-160-5554-913",
  password: "123456"

  )
user7 = User.create!(
  email: "mersad@example.com",
  first_name: "Mersad",
  last_name: "Ajanovic",
  phone_number: "+49-163-5555-297",
  password: "123456"

  )
user8 = User.create!(
  email: "alex@example.com",
  first_name: "Alex",
  last_name: "Antsiferov",
  phone_number: "+49-240-5554-913",
  password: "123456"

  )
user9 = User.create!(
  email: "chris@example.com",
  first_name: "Christoph",
  last_name: "Bohne",
  phone_number: "+49-152-5553-778",
  password: "123456"

  )
user10 = User.create!(
  email: "lukas@example.com",
  first_name: "Lukas",
  last_name: "Hortsmann",
  phone_number: "+49-160-5554-800",
  password: "123456"

  )

puts 'Seeding spaces'

space1 = Space.create!(
  title: 'Green Oasis in Berlin',
  floor_space: 5,
  price_per_day: 40,
  description: "The space is the store front of a flower shop in Kreuzberg. Suitable for small displays and artworks",
  address: "Manteuffel Str. 34, 10999",
  longitude: nil,
  latitude: nil,
  internet: true,
  availability_status: true,
  heating: true,
  lighting: true,
  user: user1
)

space2 = Space.create!(
  title: 'Charming Ground Floor Restaurant in Prime Location',
  floor_space: 30.7,
  price_per_day: 34,
  description: "Former restaurant space with entrance facing the street. Equipped with Kitchen, and available while waiting for renovation works to start.",
  address: "Skalitzer Str. 34",
  longitude: nil,
  latitude: nil,
  internet: false,
  availability_status: true,
  heating: true,
  lighting: false,
  user: user2
)

space3 = Space.create!(
  title: 'Bright, Cozy, and Central in Berlin Mitte',
  floor_space: 30,
  price_per_day: 33,
  description: "The space is equipped with a large kitchen and one small bathroom, it also has four chairs, and a lounge area in the back.",
  address: "Genslerstraße 84 Berlin Wedding",
  longitude: nil,
  latitude: nil,
  internet: false,
  availability_status: true,
  heating: false,
  lighting: true,
  user: user3
)

space4 = Space.create!(
  title: 'CENTRAL Neukölln quiet cafe window',
  floor_space: 15,
  price_per_day: 5,
  description: "Extra small room of a Pizzeria with a large window facing the street, no direct access form the room to the street but with full-heigh window. Perfect for small exhibits",
  address: "Brandenburgische Straße 17 Berlin Neukölln",
  longitude: nil,
  latitude: nil,
  internet: false,
  availability_status: true,
  heating: true,
  lighting: true,
  user: user4
)

space5 = Space.create!(
  title: 'Charming city spot',
  floor_space: 36,
  price_per_day: 44,
  description: "",
  address: "Leopoldstraße 48 Berlin Britz",
  longitude: nil,
  latitude: nil,
  internet: false,
  availability_status: true,
  heating: true,
  lighting: true,
  user: user5
)

space6 = Space.create!(
  title: 'Gallery in Prenzlauer Berg',
  floor_space: 109,
  price_per_day: 43,
  description: "",
  address: "Waßmannsdorfer Chaussee 75 Berlin Wittenau",
  longitude: nil,
  latitude: nil,
  internet: true,
  availability_status: true,
  heating: true,
  lighting: true,
  user: user1
)

space7 = Space.create!(
  title: 'Whole Store Space in Berlin Center',
  floor_space: 46,
  price_per_day: 39,
  description: "",
  address: "Leopoldstraße 83 Berlin Friedrichshagen",
  longitude: nil,
  latitude: nil,
  internet: true,
  availability_status: true,
  heating: false,
  lighting: true,
  user: user2
)

space8 = Space.create!(
  title: 'Rustic retail space next to the U-bahn station',
  floor_space: 75,
  price_per_day: 9,
  description: "",
  address: "Genslerstraße 42 Berlin Spandau",
  longitude: nil,
  latitude: nil,
  internet: false,
  availability_status: true,
  heating: false,
  lighting: true,
  user: user3
)

space9 = Space.create!(
  title: 'Large Warehouse space in Kreuzberg',
  floor_space: 99,
  price_per_day: 11,
  description: "",
  address: "Leopoldstraße 87 Berlin Friedrichshain",
  longitude: nil,
  latitude: nil,
  internet: false,
  availability_status: true,
  heating: true,
  lighting: true,
  user: user4
)

space10 = Space.create!(
  title: 'Large store window of my pharmacy',
  floor_space: 65,
  price_per_day: 42,
  description: "",
  address: "Genslerstraße 47 Berlin Spandau",
  longitude: nil,
  latitude: nil,
  internet: false,
  availability_status: true,
  heating: true,
  lighting: false,
  user: user5
)

space11 = Space.create!(
  title: 'Attractive large space in the heart of Berlin Friedrichshain',
  floor_space: 900,
  price_per_day: 40,
  description: "Former retail space open for use while the building waits for renovation works in 2021",
  address: "Brandenburgische Straße 86 Berlin Kaulsdorf",
  longitude: nil,
  latitude: nil,
  internet: false,
  availability_status: true,
  heating: true,
  lighting: true,
  user: user1
)

space12 = Space.create!(
  title: '',
  floor_space: 2,
  price_per_day: 10,
  description: "",
  address: "Genslerstraße 18 Berlin Tiergarten",
  longitude: nil,
  latitude: nil,
  internet: false,
  availability_status: true,
  heating: false,
  lighting: true,
  user: user2
)

space13 = Space.create!(
  title: '',
  floor_space: 4,
  price_per_day: 13,
  description: "",
  address: "Genslerstraße 10 Berlin Tegel",
  longitude: nil,
  latitude: nil,
  internet: true,
  availability_status: true,
  heating: true,
  lighting: true,
  user: user1
)

space14 = Space.create!(
  title: '',
  floor_space: 6,
  price_per_day: 29,
  description: "",
  address: "Genslerstraße 84 Berlin Wannsee",
  longitude: nil,
  latitude: nil,
  internet: true,
  availability_status: true,
  heating: false,
  lighting: true,
  user: user2
)

space15 = Space.create!(
  title: '',
  floor_space: 10,
  price_per_day: 40,
  description: "",
  address: "Landhausstraße 97 Schwedt, Brandenburg",
  longitude: nil,
  latitude: nil,
  internet: true,
  availability_status: false,
  heating: true,
  lighting: true,
  user: user3
)

space16 = Space.create!(
  title: '',
  floor_space: 12,
  price_per_day: 17,
  description: "",
  address: "Fugger Strasse 80 Potsdam, Brandenburg",
  longitude: nil,
  latitude: nil,
  internet: true,
  availability_status: true,
  heating: true,
  lighting: true,
  user: user4
)

space17 = Space.create!(
  title: '',
  floor_space: 40,
  price_per_day: 46,
  description: "",
  address: "Landhausstraße 46 Woltersdorf, Brandenburg",
  longitude: nil,
  latitude: nil,
  internet: true,
  availability_status: true,
  heating: false,
  lighting: true,
  user: user5
)

space18 = Space.create!(
  title: '',
  floor_space: 47,
  price_per_day: ,
  description: "Hoheluftchaussee 23 Herzberg, Brandenburg",
  address: "",
  longitude: nil,
  latitude: nil,
  internet: true,
  availability_status: false,
  heating: true,
  lighting: true,
  user: user6
)

space19 = Space.create!(
  title: '',
  floor_space: 32,
  price_per_day: 24,
  description: "Amsinckstrasse 61 Ortrand, Brandenburg",
  address: "",
  longitude: nil,
  latitude: nil,
  internet: true,
  availability_status: true,
  heating: true,
  lighting: true,
  user: user7
)

space20 = Space.create!(
  title: '1920s store front in vibrant neighbourhood',
  floor_space: 24,
  price_per_day: 27,
  description: "",
  address: "Skalitzer Str. 45 Kreuzberg, Berlin",
  longitude: nil,
  latitude: nil,
  internet: true,
  availability_status: true,
  heating: true,
  lighting: false,
  user: user8
)

puts "Created #{User.count} users and #{Space.count} spaces"
