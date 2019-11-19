# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
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
    jet_id: 1,
    price:        5,
    jet_name:         'Dishoom',
    jet_model: 'Falcon',
    user_id: "43",
    jet_seats: 5,
    jet_description:  'Buzzy destination for Indian street food in Bombay-style vintage decor.',
    user_id: 15

  },
  {
    city:     'Marseille',
    start_date: 'Lundi 18 novembre 2019',
    end_date: 'Mercredi 20 novembre 2019',
    start_city: 'Bombay',
    end_city: 'Caracas',
    jet_id: 2,
    price:        10,
    jet_name:         'Flora',
    jet_model: 'Viper',
    user_id: "42",
    jet_seats: 10,
    jet_description:  'Buzzy destination for Indian street food in Bombay-style vintage decor.',
    user_id: 15
  },

 {
    city:  'London',
    start_date: 'Jeudi 21 novembre 2019',
    end_date: 'Lundi 25 novembre 2019',
    start_city: 'Paris',
    end_city: 'Panama',
    jet_id: 3,
    price: 15,
    jet_name: 'Flights',
    jet_model: 'Flexjet',
    user_id: "42",
    jet_seats: 20,
    jet_description:  'Buzzy destination for Indian street food in Bombay-style vintage decor.',
    user_id: 15

  },
  {
    city: 'Paris',
    start_date: 'Mardi 26 novembre 2019',
    end_date: 'Vendredi 29 novembre 2019',
    start_city: 'Paris',
    end_city: 'London',
    jet_id: 4,
    price:        10,
    jet_name:         'Plane',
    jet_model: 'Easyjet',
    user_id: "44",
    jet_seats: 20,
    jet_description:  'Buzzy destination for Indian street food in Bombay-style vintage decor.',
    user_id: 15

  }

]

Trip.create!(trips_attributes)

puts 'Creating booking...'
bookings_attributes = [
  {
    status:  'pending',
    user_id: "16",
    trip_id: "13",
  },

  {
    status:  'confirmed',
    user_id: "16",
    trip_id: "14",
  },

]

Booking.create!(bookings_attributes)

puts 'Finished'
