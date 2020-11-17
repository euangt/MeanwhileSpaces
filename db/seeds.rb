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
  last_name: "Kasai"
  password: "123456"

  )

user2 = User.create!(
  email: "ben@example.com",
  first_name: "Ben",
  last_name: "Gordon"
  password: "123456"

  )
user3 = User.create!(
  email: "euan@example.com",
  first_name: "Euan",
  last_name: "Gillespie-Taylor"
  password: "123456"

  )
user4 = User.create!(
  email: "max@example.com",
  first_name: "Max",
  last_name: "Glassmacher"
  password: "123456"

  )
user5 = User.create!(
  email: "iri@example.com",
  first_name: "Iri",
  last_name: "Popa"
  password: "123456"

  )
user6 = User.create!(
  email: "valerie@example.com",
  first_name: "Valerie",
  last_name: "Schraauwers"
  password: "123456"

  )
user7 = User.create!(
  email: "mersad@example.com",
  first_name: "Mersad",
  last_name: "Ajanovic"
  password: "123456"

  )
user8 = User.create!(
  email: "alex@example.com",
  first_name: "Alex",
  last_name: "Antsiferov"
  password: "123456"

  )
user9 = User.create!(
  email: "chris@example.com",
  first_name: "Christoph",
  last_name: "Bohne"
  password: "123456"

  )
user10 = User.create!(
  email: "lukas@example.com",
  first_name: "Lukas",
  last_name: "Hortsmann"
  password: "123456"

  )

puts 'Seeding spaces'

space1 = Space.create!(
  title: '',
  floor_space: ,
  price_per_day: ,
  description: "",
  address: "",
  longitude: nil,
  latitude: nil,
  internet: true,
  availability_status: true,
  heating: true,
  lighting: true,
  user: user1
)

puts "Created #{User.count} users and #{Space.count} spaces"
