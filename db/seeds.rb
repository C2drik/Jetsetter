# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Booking.destroy_all
Trip.destroy_all
User.destroy_all

puts 'Creating users...'

users_attributes = [
  {

  email: 'anniou@gmail.com',
  password: '123456'

  },

 {

  email: 'etienne@gmail.com',
  password: '123456'
  },

  {

  email: 'arafath@gmail.com',
  password: '123455'
  },

  {

  email: 'cédrik@gmail.com',
  password: '123456'
  }

]
User.create!(users_attributes)

puts 'Creating trip...'

trips_attributes = [
  {
    city:      'Bombay',
    start_date: 'Mardi 16 novembre 2019',
    end_date: 'JeuUser.create!(users_attributes)di 25 novembre 2019',
    start_city: 'London',
    end_city: 'Paris',
    duration: '1h00',
    jet_id: 1,
    price:        5,
    jet_name:         'Dishoom',
    jet_model: 'Falcon',
    user_id: "43",
    jet_seats: 5,
    jet_description:  'Buzzy destination for Indian street food in Bombay-style vintage decor.',
    user: User.find_by(email: 'etienne@gmail.com')

  },
  {
    city:     'Marseille',
    start_date: 'Lundi 18 novembre 2019',
    end_date: 'Mercredi 20 novembre 2019',
    start_city: 'Bombay',
    end_city: 'Caracas',
    duration: '1h00',
    jet_id: 2,
    price:        10,
    jet_name:         'Flora',
    jet_model: 'Viper',
    user_id: "42",
    jet_seats: 10,
    jet_description:  'Buzzy destination for Indian street food in Bombay-style vintage decor.',
    user: User.find_by(email: 'etienne@gmail.com')
  },

 {
    city:  'London',
    start_date: 'Jeudi 21 novembre 2019',
    end_date: 'Lundi 25 novembre 2019',
    start_city: 'Paris',
    end_city: 'Panama',
    duration: '1h00',
    jet_id: 3,
    price: 15,
    jet_name: 'Flights',
    jet_model: 'Flexjet',
    user_id: "42",
    jet_seats: 20,
    jet_description:  'Buzzy destination for Indian street food in Bombay-style vintage decor.',
    user: User.find_by(email: 'etienne@gmail.com')

  },
  {
    city: 'Paris',
    start_date: 'Mardi 26 novembre 2019',
    end_date: 'Vendredi 29 novembre 2019',
    start_city: 'Paris',
    end_city: 'London',
    duration: '2h00',
    jet_id: 4,
    price:        10,
    jet_name:         'Plane',
    jet_model: 'Easyjet',
    user_id: "44",
    jet_seats: 20,
    jet_description:  'Buzzy destination for Indian street food in Bombay-style vintage decor.',
    user: User.find_by(email: 'arafath@gmail.com')

  }

]

Trip.create!(trips_attributes)

puts 'Creating booking...'

Booking.create!(status: 'pending',
  user: User.find_by(email: 'anniou@gmail.com'),
  trip: Trip.find_by(city: 'Bombay')
  )

Booking.create!(status: 'confirmed',
  user: User.find_by(email: 'anniou@gmail.com'),
  trip: Trip.find_by(city: 'Paris')
  )

5.times {
  Booking.create!(status: rand(0..1) == 0 ? 'pending' : 'confirmed',
    user: User.first,
    trip: Trip.first

Booking.create!(status: 'pending',
  user: User.find_by(email: 'etienne@gmail.com'),
  trip: Trip.find_by(city: 'Marseille')
  )

Booking.create!(status: 'pending',
  user: User.find_by(email: 'etienne@gmail.com'),
  trip: Trip.find_by(city: 'Paris')
  )

Booking.create!(status: 'confirmed',
  user: User.find_by(email: 'arafath@gmail.com'),
  trip: Trip.find_by(city: 'London')
  )

# Booking.create!(bookings_attributes)

puts 'Finished'
