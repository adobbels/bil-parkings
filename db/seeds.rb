# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "***--- SEEDS PROCESSING ---***"

Booking.destroy_all
Parking.destroy_all
Profile.destroy_all
User.destroy_all

puts "***--- CREATING 5 FAKE USERS & PROFILES  ---***"
a = []
5.times do
  user = User.create!(
    email: Faker::Internet.email,
    password: "123456"
  )
  profile = Profile.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    user_id: user.id,
  )
a << profile.id
end

puts "***--- CREATING 4 PARKINGS NOT AVAILABLE ---***"

b = 0

4.times do
b = b + 1
  parking = Parking.create!(
      number: b,
      profile_id: a[rand(0..4)]
  )
end

puts "***--- CREATING 6 PARKINGS AVAILABLE ---***"
c = DateTime.now.strftime('%Q')
6.times do
b = b + 1

  parking = Parking.create!(
      number: b,
      profile_id: a[rand(0..4)],
      status: "Available"
  )
end

puts 'Finished!'
