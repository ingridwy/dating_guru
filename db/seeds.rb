require "open-uri"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

first_file = URI.open("https://res.cloudinary.com/dg3jy8byy/image/upload/v1583240779/ouwjhb1yhx76g4ainbdp.jpg")
second_file = URI.open("https://res.cloudinary.com/dg3jy8byy/image/upload/v1583240984/md3cimqoxws8cy9boyfj.png")
third_file = URI.open("https://res.cloudinary.com/dg3jy8byy/image/upload/v1583240341/jwqhc0n6qge1o0apmcsm.jpg")
fourth_file = URI.open("https://res.cloudinary.com/dg3jy8byy/image/upload/v1583246331/c700x420_eycdpw.jpg")
fifth_file = URI.open("https://res.cloudinary.com/dg3jy8byy/image/upload/v1583241727/ivi8abpmkq3durbxc6sx.jpg")
sixth_file = URI.open("https://res.cloudinary.com/dg3jy8byy/image/upload/v1583246174/Veggie-rice-bowl-1400x919-mini-ba621247-21ff-419b-9604-3a27a255b90b-0-1400x919_lqtfuy.jpg")
seventh_file = URI.open("https://res.cloudinary.com/dg3jy8byy/image/upload/v1583245930/169591_qxwjwp.jpg")
eighth_file = URI.open("https://res.cloudinary.com/dg3jy8byy/image/upload/v1583246102/rsz_firezza_-1_lpckbq.png")
ninth_file = URI.open("https://res.cloudinary.com/dg3jy8byy/image/upload/v1583241704/nqq1j4shbdvxajvyj0jt.jpg")

User.destroy_all
Activity.destroy_all
Restaurant.destroy_all
User.create! email: "test@gmail.com", password: "123456"


    first_restaurant = Restaurant.create(
  name: "McDonalds",
  address: "Bethnal Green Road",
  category: "Burgers",
  price: 1,
  open_hour: "11:30am - 9:30pm",
  phone_number: "0208 983 9862"
  )
    first_restaurant.photo.attach(io: first_file, filename: "ouwjhb1yhx76g4ainbdp.jpg" , content_type: 'image/jpg')

    second_restaurant = Restaurant.create(
  name: "KFC",
  address: "Barking Road",
  category: "Fried chicken",
  price: 1,
  open_hour: "11:30am - 9:30pm",
  phone_number: "0208 983 9862"
  )
    second_restaurant.photo.attach(io: second_file, filename: "md3cimqoxws8cy9boyfj.png" , content_type: 'image/jpg')

    third_restaurant = Restaurant.create(
  name: "Pho house",
  address: "Kingsland Road",
  category: "Vietnamese",
  price: 2,
  open_hour: "11:30am - 9:30pm",
  phone_number: "0208 983 9862"
  )
    third_restaurant.photo.attach(io: third_file, filename: "jwqhc0n6qge1o0apmcsm.jpg" , content_type: 'image/jpg')

    fourth_restaurant = Restaurant.create(
  name: "Preto",
  address: "Shaftsbury Avenue",
  category: "Brazilian grill",
  price: 3,
  open_hour: "11:30am - 9:30pm",
  phone_number: "0208 983 9862"
  )
    fourth_restaurant.photo.attach(io: fourth_file, filename: "c700x420_eycdpw.jpg" , content_type: 'image/jpg')

    fifth_restaurant = Restaurant.create(
  name: "The Ned",
  address: "Bank",
  category: "Seafood",
  price: 4,
  open_hour: "11:30am - 9:30pm",
  phone_number: "0208 983 9862"
  )
    fifth_restaurant.photo.attach(io: fifth_file, filename: "ivi8abpmkq3durbxc6sx.jpg" , content_type: 'image/jpg')

    sixth_restaurant = Restaurant.create(
  name: "Cafe Papaya",
  address: "Shoreditch",
  category: "Vegan",
  price: 2,
  open_hour: "11:30am - 9:30pm",
  phone_number: "0208 983 9862"
  )
    sixth_restaurant.photo.attach(io: sixth_file, filename: "Veggie-rice-bowl-1400x919-mini-ba621247-21ff-419b-9604-3a27a255b90b-0-1400x919_lqtfuy.jpg" , content_type: 'image/jpg')

    seventh_restaurant = Restaurant.create(
  name: "Sushi Salsa",
  address: "Camden Town",
  category: "Sushi",
  price: 2,
  open_hour: "11:30am - 9:30pm",
  phone_number: "0208 983 9862"
  )
    seventh_restaurant.photo.attach(io: seventh_file, filename: "169591_qxwjwp.jpg" , content_type: 'image/jpg')

    eighth_restaurant = Restaurant.create(
  name: "Brxton Italian",
  address: "Bow",
  category: "Italian",
  price: 2,
  open_hour: "11:30am - 9:30pm",
  phone_number: "0208 983 9862"
  )
    eighth_restaurant.photo.attach(io: eighth_file, filename: "rsz_firezza_-1_lpckbq.png" , content_type: 'image/jpg')

    ninth_restaurant = Restaurant.create(
  name: "Burger and Lobster",
  address: "Canary Wharf",
  category: "Seafood",
  price: 3,
  open_hour: "11:30am - 9:30pm",
  phone_number: "0208 983 9862"
  )
    ninth_restaurant.photo.attach(io: ninth_file, filename: "nqq1j4shbdvxajvyj0jt.jpg" , content_type: 'image/jpg')

Activity.create(
  name: "British Museum",
  address: "London",
  open_hour: "9:00-18:00",
  phone_number: "74987918374938",
  category: "Museum"
)


Activity.create(
  name: "Natural Museum",
  address: "London",
  open_hour: "10:00-15:00",
  phone_number: "0000000000000",
  category: "Museum"
)

Activity.create(
  name: "Theatre",
  address: "London",
  open_hour: "11:00-0:00",
  phone_number: "52798739284",
  category: "Cinema"
)


