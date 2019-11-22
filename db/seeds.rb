# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# file = URI.open('https://res.cloudinary.com/anniou/image/upload/v1574330792/nqeiqrkrwl2n18flljpa.jpg')
# trip = Trip.new(title: 'NES', body: "A great console")
# trip.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
# Here we write article.photo.attach(...) because we wrote has_one_attached :photo in app/models article.rb
# trip.save
require 'open-uri'






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
  email: 'muriel@gmail.com',
  password: '123456'
  },
  {
  email: 'johanna@gmail.com',
  password: '123456'
  },
  {
  email: 'paul@gmail.com',
  password: '123456'
  }
]

User.create!(users_attributes)
file = URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/tu4sfe6rgefaundyisec.jpg')

def put_photo_to_user(user, photo_path)
  file = URI.open(photo_path)
  anniou = user
  anniou.photo.attach(io: file, filename: 'anniou.jpg', content_type: 'image/jpg')
  anniou.save
end

# anniou@gmail.com
put_photo_to_user(User.first, 'https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/tu4sfe6rgefaundyisec.jpg')

# etienne@gmail.com
put_photo_to_user(User.second, 'https://avatars0.githubusercontent.com/u/48604969?v=4')

# muriel@gmail.com
put_photo_to_user(User.third, 'https://avatars2.githubusercontent.com/u/54837955?v=4')

# johanna@gmail.com
put_photo_to_user(User.third, 'https://avatars3.githubusercontent.com/u/55392520?v=4')

# paul@gmail.com
put_photo_to_user(User.third, 'https://avatars3.githubusercontent.com/u/54004476?v=4')
puts 'Creating trips...'

trips_attributes = [

{
    city: 'Paris',
    start_date: '23th november 2019',
    end_date: '23th november 2019',
    start_city: 'Paris',
    end_city: 'London',
    jet_id: 1,
    price:  4.500,
    duration: 1,
    jet_name:  'CESSNA',
    jet_model: 'AMP',
    user_id: "44",
    jet_seats: 12,
    jet_description:  'The Cessna (12 seater, range: 2,235 km) is extremely well-designed lightweight jet.',
    user: User.find_by(email: 'anniou@gmail.com')
  },

  {
    city: 'Dublin',
    start_date: '24th november 2019',
    end_date: '24th november 2019',
    start_city: 'Paris',
    end_city: 'Dublin',
    jet_id: 2,
    price:  6.000,
    duration: 2,
    jet_name:  'BOMBER',
    jet_model: 'XERT',
    user_id: "44",
    jet_seats: 5,
    jet_description:  'The Bombardier range of jets includes different types of aircraft, including a very long range jet range called Global Express',
    user: User.find_by(email: 'anniou@gmail.com')
  },
  {
    city: 'Amsterdam',
    start_date: '24th november 2019',
    end_date: '24th november 2019',
    start_city: 'London',
    end_city: 'Amsterdam',
    jet_id: 3,
    price:  7.500,
    duration: 1.30,
    jet_name:  'GLOBAL',
    jet_model: 'PIKT',
    user_id: "44",
    jet_seats: 8,
    jet_description:  'Global Aerospace is the third largest aircraft manufacturer in the world after Airbus and Boeing',
    user: User.find_by(email: 'etienne@gmail.com')
  },

  {
    city: 'Bruges',
    start_date: '26th november 2019',
    end_date: '26th november 2019',
    start_city: 'Manchester',
    end_city: 'Bruges',
    jet_id: 4,
    price:  10.000,
    duration: 2,
    jet_name:  'EMBRAER',
    jet_model: 'CROE',
    user_id: "44",
    jet_seats: 5,
    jet_description:  'Global Aerospace is the third largest aircraft manufacturer in the world after Airbus and Boeing',
    user: User.find_by(email: 'etienne@gmail.com')
  },

  {
    city: 'Madrid',
    start_date: '27th november 2019',
    end_date: '28th november 2019',
    start_city: 'Lisbonne',
    end_city: 'Madrid',
    jet_id: 5,
    price:  2.500,
    duration: 1,
    jet_name:  'LEGACY',
    jet_model: 'KLIE',
    user_id: "44",
    jet_seats: 6,
    jet_description:  'Highly regarded in the ultra-light jets segment, the Phenom 100 (4 seats, range: 1,996 km) offers a bit more space and refinement.',
    user: User.find_by(email: 'anniou@gmail.com')
  },

  {
    city: 'Berlin',
    start_date: '27th november 2019',
    end_date: '27th november 2019',
    start_city: 'Barcelona',
    end_city: 'Berlin',
    duration: 2,
    jet_id: 6,
    price:  5.250,
    jet_name:  'GULFSTREAM',
    jet_model: 'HASQ',
    user_id: "44",
    jet_seats: 15,
    jet_description:  'The GULFSTREAM currently holds the record for speed and range of private aviation.',
    user: User.find_by(email: 'anniou@gmail.com')


  }
]
## booking create

Trip.create!(trips_attributes)

puts 'Creating booking...'

Booking.create!(status: 'pending',
  user: User.find_by(email: 'anniou@gmail.com'),
  trip: Trip.find_by(city: 'Paris')
  )

Booking.create!(status: 'confirmed',
  user: User.find_by(email: 'anniou@gmail.com'),
  trip: Trip.find_by(city: 'Dublin')
  )

Booking.create!(status: 'pending',
  user: User.find_by(email: 'anniou@gmail.com'),
  trip: Trip.find_by(city: 'Amsterdam')
  )

Booking.create!(status: 'pending',
  user: User.find_by(email: 'etienne@gmail.com'),
  trip: Trip.find_by(city: 'Bruges')
  )

Booking.create!(status: 'confirmed',
  user: User.find_by(email: 'etienne@gmail.com'),
  trip: Trip.find_by(city: 'Madrid')
  )

Booking.create!(status: 'confirmed',
  user: User.find_by(email: 'etienne@gmail.com'),
  trip: Trip.find_by(city: 'Berlin')
  )


puts 'Finished'
