# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require 'csv'

puts "***--- DELETING CURRENT DATABASE ---***"

Booking.destroy_all
Parking.destroy_all
Profile.destroy_all
User.destroy_all

# puts "***--- READING CSV DATABASE ---***"

# csv_text = File.read(Rails.root.join('lib', 'seeds', 'users.csv'))
# csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')

puts "***--- CREATING ADMIN USERS ---***"

  user = User.create!(
    email: 'aurelien.dobbels@bil.com',
    password: '123456',
    admin: true,
  )
  profile = Profile.create!(
    first_name: 'Aurélien',
    last_name: 'Dobbels',
    user_id: user.id,
  )

  user = User.create!(
    email: 'aurelien@bil.com',
    password: '123456',
    admin: false,
  )
  profile = Profile.create!(
    first_name: 'Aurélien',
    last_name: 'Dobbels',
    user_id: user.id,
  )

  user = User.create!(
    email: 'andre.weiland@bil.com',
    password: '123456',
    admin: true,
  )
  profile = Profile.create!(
    first_name: 'André',
    last_name: 'Weiland',
    user_id: user.id,
  )

  user = User.create!(
    email: 'gpos.parkings@bil.com',
    password: '123456',
    admin: true,
  )
  profile = Profile.create!(
    first_name: 'André',
    last_name: 'Weiland',
    user_id: user.id,
  )

# A UTILISER SI ON REVIENT AU MODELE SELON LEQUEL CHAQUE PROPRIO DE PARKING PEUT SOUS LOUER
# PENSER A UTILISER LE USER.CSV DE NOUVEAU
# puts "***--- CREATING USERS ---***"
# csv.each do |row|
#   #  puts row['email'], row['password'],row['admin'], row['first_name'], row['last_name'], row['number'], row['status']


#   user = User.create!(
#     email: row['email'],
#     password: row['password'],
#     admin: row['admin'],
#   )
#   profile = Profile.create!(
#     first_name: row['first_name'],
#     last_name: row['last_name'],
#     user_id: user.id,
#   )
#   parking = Parking.create!(
#       number: row['number'],
#       status: row['status'],
#       profile_id: profile.id,
#   )

# end

puts "***--- CREATING 10 PARKING AVAILABLE LINKED TO GPOS ---***"
b = 0

10.times do
b = b + 1
  parking = Parking.create!(
      number: b,
      profile_id: Profile.last.id,
      status: "Available",
      stamp: b
  )
end


#   parking = Parking.create!(
#       number: 1,
#       profile_id: a[0],
#       status: "Not Available",
#   )

# ************************************

# puts "***--- SEEDS PROCESSING ---***"

# Booking.destroy_all
# Parking.destroy_all
# Profile.destroy_all
# User.destroy_all

# puts "***--- CREATING SEEDS  ---***"

#   user = User.create!(
#     email: "aurelien.dobbels@bil.com",
#     password: "123456",
#     admin: true,
#   )
#   profile = Profile.create!(
#     first_name: "Aurélien",
#     last_name: "Dobbels",
#     user_id: user.id,
#   )

#   parking = Parking.create!(
#       number: 1,
#       status: "Not Available",
#       profile_id: profile.id,
#   )

# puts "***--- CREATING 5 USERS & PROFILES  ---***"
# a = []

#   user = User.create!(
#     email: "david@bil.com",
#     password: "123456"
#   )
#   profile = Profile.create!(
#     first_name: "David",
#     last_name: "Mansy",
#     user_id: user.id,
#   )
# a << profile.id

#   user = User.create!(
#     email: "claude@bil.com",
#     password: "123456"
#   )
#   profile = Profile.create!(
#     first_name: "Claude",
#     last_name: "Martin",
#     user_id: user.id,
#   )
# a << profile.id

#   user = User.create!(
#     email: "nathalie@bil.com",
#     password: "123456"
#   )
#   profile = Profile.create!(
#     first_name: "Nathalie",
#     last_name: "Knops",
#     user_id: user.id,
#   )
# a << profile.id

#   user = User.create!(
#     email: "veronique@bil.com",
#     password: "123456"
#   )
#   profile = Profile.create!(
#     first_name: "Véronique",
#     last_name: "Schlick",
#     user_id: user.id,
#   )
# a << profile.id

#   user = User.create!(
#     email: "francois@bil.com",
#     password: "123456"
#   )
#   profile = Profile.create!(
#     first_name: "François",
#     last_name: "Giotto",
#     user_id: user.id,
#   )
# a << profile.id

#   user = User.create!(
#     email: "nicolas@bil.com",
#     password: "123456"
#   )
#   profile = Profile.create!(
#     first_name: "Nicolas",
#     last_name: "Legay",
#     user_id: user.id,
#   )
# a << profile.id

# puts "***--- CREATING 5 FAKE USERS & PROFILES  ---***"
# a = []
# 5.times do
#   user = User.create!(
#     email: Faker::Internet.email,
#     password: "123456"
#   )
#   profile = Profile.create!(
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     user_id: user.id,
#   )
# a << profile.id
# end

# puts "***--- CREATING 3 PARKING NOT AVAILABLE ---***"

#   parking = Parking.create!(
#       number: 1,
#       profile_id: a[0],
#       status: "Not Available",
#   )

#     parking = Parking.create!(
#       number: 2,
#       profile_id: a[1],
#       status: "Not Available",
#   )

#   parking = Parking.create!(
#       number: 3,
#       profile_id: a[2],
#       status: "Not Available",
#   )

# puts "***--- CREATING 4 PARKING NOT AVAILABLE ---***"
# b = 0

# 4.times do
# b = b + 1
#   parking = Parking.create!(
#       number: b,
#       profile_id: a[rand(0..4)]
#   )
# end

# puts "***--- CREATING 6 PARKINGS AVAILABLE ---***"
# c = DateTime.now.strftime('%s').to_i

# 6.times do
# b = b + 1
# c = c + 1

#   parking = Parking.create!(
#       number: b,
#       profile_id: a[rand(0..4)],
#       status: "Available",
#       stamp: c,
#   )
# end

puts 'FINISHED!'
