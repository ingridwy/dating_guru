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

# activity seeding(museum picture)

one = URI.open("https://res.cloudinary.com/dhhorrhuq/image/upload/v1583271187/Untitled_design_rtvzta.png")
# a_two = URI.open()
# a_three = URI.open()
# a_four = URI.open()
# a_five = URI.open()
# a_six = URI.open()


# activity seeding(museum data)

a_one = Activity.create(
  name: "Victoria and Albert Museum",
  address: "Cromwell Rd, South Kensington, London SW7 5BD",
  open_hour: "10:00-17:45",
  phone_number: "020 7942 2000",
  category: "Museum"
)

a_one.photo.attach(io: one, filename: "Untitled_design_rtvzta.png" , content_type: 'image/png')


a_two = Activity.create(
  name: "British Museum",
  address: "Great Russell St, Bloomsbury, London WC1B 3DG",
  open_hour: "10:00-17:30",
  phone_number: "020 7323 8299",
  category: "Museum"
)



a_three = Activity.create(
  name: "Tate Modern",
  address: "Bankside, London SE1 9TG",
  open_hour: "10:00-18:00",
  phone_number: "020 7887 8888",
  category: "Museum"
)



a_four = Activity.create(
  name: "Natural History Museum",
  address: "Cromwell Rd, South Kensington, London SW7 5BD",
  open_hour: "10:00-17:50",
  phone_number: "020 7942 5000",
  category: "Museum"
)



a_five = Activity.create(
  name: "The National Gallery",
  address: "Trafalgar Square, Charing Cross, London WC2N 5DN",
  open_hour: "10:00-18:00",
  phone_number: "020 7747 2885",
  category: "Museum"
)



a_six = Activity.create(
  name: "Design Museum",
  address: "224-238 Kensington High St, Kensington, London W8 6AG",
  open_hour: "10:00-18:00",
  phone_number: "020 3862 5900",
  category: "Museum"
)

# weekend market

a_seven = Activity.create(
  name: "Broadway Market",
  address: "Broadway Market, E8 4QJ",
  open_hour: "Saturdays 9:00-17:00.",
  phone_number: "",
  category: "Market"
)

a_eight = Activity.create(
  name: "Netil Market",
  address: "13-23 Westgate Street, E8 3RL",
  open_hour: "Saturdays, 11:00-18:00",
  phone_number: "",
  category: "Market"
)


a_nine = Activity.create(
  name: "Victoria Park Market",
  address: "56-57, Gore Rd, London E9 7HN",
  open_hour: "Sundays 10:00-16:00",
  phone_number: "",
  category: "Market"
)


a_ten = Activity.create(
  name: "Brick Lane Market",
  address: "Brick Ln, Spitalfields, London E1 6QR",
  open_hour: "10:00-18:00",
  phone_number: "",
  category: "Market"
)


a_eleven = Activity.create(
  name: "Old Spitalfields Market",
  address: "16 Commercial St, Spitalfields, London E1 6EW",
  open_hour: "10:00-18:00",
  phone_number: "",
  category: "Market"
)

#sport
a_twelve = Activity.create(
  name: "Bounce Old Street",
  address: "241 Old St, Old Street, London EC1V 9EY",
  open_hour: "16:00-0:00",
  phone_number: "",
  category: "Sport"
)
































