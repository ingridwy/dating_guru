require "open-uri"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

first_file = URI.open("https://res.cloudinary.com/dhhorrhuq/image/upload/v1583493036/resto1_zs2got.jpg")
second_file = URI.open("https://res.cloudinary.com/dhhorrhuq/image/upload/v1583495099/resto02_gjektw.jpg")
third_file = URI.open("https://res.cloudinary.com/dg3jy8byy/image/upload/v1583240341/jwqhc0n6qge1o0apmcsm.jpg")
fourth_file = URI.open("https://res.cloudinary.com/dg3jy8byy/image/upload/v1583246331/c700x420_eycdpw.jpg")
fifth_file = URI.open("https://res.cloudinary.com/dg3jy8byy/image/upload/v1583241727/ivi8abpmkq3durbxc6sx.jpg")
sixth_file = URI.open("https://res.cloudinary.com/dg3jy8byy/image/upload/v1583246174/Veggie-rice-bowl-1400x919-mini-ba621247-21ff-419b-9604-3a27a255b90b-0-1400x919_lqtfuy.jpg")
seventh_file = URI.open("https://res.cloudinary.com/dg3jy8byy/image/upload/v1583245930/169591_qxwjwp.jpg")
eighth_file = URI.open("https://res.cloudinary.com/dg3jy8byy/image/upload/v1583246102/rsz_firezza_-1_lpckbq.png")
ninth_file = URI.open("https://res.cloudinary.com/dg3jy8byy/image/upload/v1583241704/nqq1j4shbdvxajvyj0jt.jpg")
tenth_file = URI.open("https://res.cloudinary.com/dhhorrhuq/image/upload/v1583493036/resto10_juyclh.jpg")
eleventh_file = URI.open("https://res.cloudinary.com/dhhorrhuq/image/upload/v1583497714/resto_11_amhsw2.jpg")
twelfth_file = URI.open("https://res.cloudinary.com/dhhorrhuq/image/upload/v1583497713/resto_12_lll1im.jpg")
thirteenth = URI.open("https://res.cloudinary.com/dhhorrhuq/image/upload/v1583497763/resto_13revised_bcpnww.jpg")



User.destroy_all
Restaurant.destroy_all
Activity.destroy_all
Book.destroy_all
User.create! user_name: "test", email: "test@gmail.com", password: "123456"


    first_restaurant = Restaurant.create(
  name: "Passo Shoreditch",
  address: "Camden Passage, 33, Islington Green, London",
  category: "Italian",
  price: 40,
  open_hour: "12:30-15:00, 17:00-22:00 ",
  phone_number: "0232 983 9862",
  description: "Housemade pasta & clay-oven pizzas are among the offerings at this stylish Italian eatery & bar."
  )
    first_restaurant.photo.attach(io: first_file, filename: "resto1_revise_mtuhwm.jpg" , content_type: 'image/jpg')

  second_restaurant = Restaurant.create(
  name: "Ippudo",
  address: "83 Upper St, London",
  category: "Japanese",
  price: 60,
  open_hour: "11:30-22:00",
  phone_number: "0208 983 9862",
  description: "Japanese spot for Hakata-style ramen also offers dumplings, sushi and steak in casual, modern digs."
  )
    second_restaurant.photo.attach(io: second_file, filename: "md3cimqoxws8cy9boyfj.png" , content_type: 'image/jpg')

    third_restaurant = Restaurant.create(
  name: "Pho house",
  address: "Kingsland Road",
  category: "Vietnamese",
  price: 20,
  open_hour: "11:30-21:00",
  phone_number: "0208 983 9862",
  description: "Compact and casual venue serving a range of classic noodle soup dishes from Vietnam."
  )
    third_restaurant.photo.attach(io: third_file, filename: "jwqhc0n6qge1o0apmcsm.jpg" , content_type: 'image/jpg')

    fourth_restaurant = Restaurant.create(
  name: "Preto",
  address: "61 Richmond Avenue, London",
  category: "Grill",
  price: 30,
  open_hour: "11:30-23:30",
  phone_number: "0208 983 9862",
  description: "Unlimited spit-roasted meat from a Brazilian Churrascaria barbecue, carved at your table."
  )
    fourth_restaurant.photo.attach(io: fourth_file, filename: "c700x420_eycdpw.jpg" , content_type: 'image/jpg')

    fifth_restaurant = Restaurant.create(
  name: "The Ned",
  address: "300 Oxford St, Marylebone, London",
  category: "Seafood",
  price: 50,
  open_hour: "11:30-23:30",
  phone_number: "0208 983 9862",
  description: "Upscale chain restaurant serving sustainably sourced British fish & seafood, plus some meat dishes."
  )
    fifth_restaurant.photo.attach(io: fifth_file, filename: "ivi8abpmkq3durbxc6sx.jpg" , content_type: 'image/jpg')

    sixth_restaurant = Restaurant.create(
  name: "Cafe Papaya",
  address: "Shoreditch",
  category: "Vegan",
  price: 30,
  open_hour: "11:30-22:00",
  phone_number: "0208 983 9862",
  description: "Plant-based British comfort food classics head up the Vegan menu at this edgy, fast-casual venue."
  )
    sixth_restaurant.photo.attach(io: sixth_file, filename: "Veggie-rice-bowl-1400x919-mini-ba621247-21ff-419b-9604-3a27a255b90b-0-1400x919_lqtfuy.jpg" , content_type: 'image/jpg')

    seventh_restaurant = Restaurant.create(
  name: "Sushi Salsa",
  address: "Camden Town",
  category: "Japanese",
  price: 30,
  open_hour: "11:30-0:00",
  phone_number: "0208 983 9862",
  description: "Contemporary bar/restaurant with a waterside terrace and a menu of Japanese food and cocktails."
  )
    seventh_restaurant.photo.attach(io: seventh_file, filename: "169591_qxwjwp.jpg" , content_type: 'image/jpg')

    eighth_restaurant = Restaurant.create(
  name: "Brxton Italian",
  address: "Bow",
  category: "Italian",
  price: 30,
  open_hour: "11:30-23:30",
  phone_number: "0208 983 9862",
  description: "A menu focused on classic Sicilian cooking & fare in a modern, cozy setting with exposed brick."
  )
    eighth_restaurant.photo.attach(io: eighth_file, filename: "rsz_firezza_-1_lpckbq.png" , content_type: 'image/jpg')

    ninth_restaurant = Restaurant.create(
  name: "Burger and Lobster",
  address: "Canary Wharf",
  category: "Seafood",
  price: 40,
  open_hour: "11:30-21:30",
  phone_number: "0208 983 9862",
  description: "Burgers, whole lobster or lobster rolls with chips and salad for set price in American-style diner."
  )
    ninth_restaurant.photo.attach(io: ninth_file, filename: "nqq1j4shbdvxajvyj0jt.jpg" , content_type: 'image/jpg')

tenth_restaurant = Restaurant.create(
  name: "TOZI",
  address: "Ariel Way, Shepherd's Bush, London",
  category: "Italian",
  price: 60,
  open_hour: "12:00-21:30",
  phone_number: "0208 983 9692",
  description: "Venetian sharing plates, cheese and meat in marble, wood and terracotta room with large group table."
  )
    tenth_restaurant.photo.attach(io: tenth_file, filename: "resto10_juyclh.jpg" , content_type: 'image/jpg')

eleventh_restaurant = Restaurant.create(
  name: "Essential Vegan Cafe",
  address: "6 Calvert Ave, Hackney, London",
  category: "Vegan",
  price: 10,
  open_hour: "09:00-22:00",
  phone_number: "0208 983 9692",
  description: "Homey, dog-friendly setting for vegan eats with a Brazilian flair, baked goods, coffee & BYOB.."
  )
    eleventh_restaurant.photo.attach(io: eleventh_file, filename: "resto10_juyclh.jpg" , content_type: 'image/jpg')

twelfth_restaurant = Restaurant.create(
  name: "Nanashi Shoreditch",
  address: "300 Oxford St, Marylebone, London",
  category: "Japanese",
  price: 70,
  open_hour: "17:00-22:30",
  phone_number: "0208 983 9692",
  description: "Cozy, stylish restaurant with a Zen-like vibe for artful sushi, select sake & creative cocktails.."
  )
    twelfth_restaurant.photo.attach(io: twelfth_file, filename: "resto10_juyclh.jpg" , content_type: 'image/jpg')

thirteenth_restaurant = Restaurant.create(
  name: "Tanakatsu",
  address: "101 Oxford St, Marylebone, London",
  category: "Japanese",
  price: 30,
  open_hour: "12:00-21:30",
  phone_number: "0208 983 9692",
  description: "Modern outpost serving katsu, sushi rolls & other classic Japanese entrees in a minimalist interior."
  )
    thirteenth_restaurant.photo.attach(io: thirteenth, filename: "resto10_juyclh.jpg" , content_type: 'image/jpg')



# activity seeding(museum picture)

one = URI.open("https://res.cloudinary.com/dhhorrhuq/image/upload/v1583356609/01_muse_Victoria-and-Albert-museum-London_yqxpqc.jpg")
two = URI.open("https://res.cloudinary.com/dhhorrhuq/image/upload/v1583359769/02_replace_british_museum_cim7lu.jpg")
three = URI.open("https://res.cloudinary.com/dhhorrhuq/image/upload/v1583359073/03_muse_RIB-0019996-1360x765_zma1gz.jpg")
four = URI.open("https://res.cloudinary.com/dhhorrhuq/image/upload/v1583359073/4_muse_Natural-History-Museum_bddygg.jpg")
five = URI.open("https://res.cloudinary.com/dhhorrhuq/image/upload/v1583360402/05_national-gallery-view-from-trafalgar-square-p3346_007_w3faci.jpg")
six = URI.open("https://res.cloudinary.com/dhhorrhuq/image/upload/v1583359073/4_muse_Natural-History-Museum_bddygg.jpg")


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
  price: 0,
  description:"test",
  phone_number: "020 7942 2000",
  category: "Museum"
)
a_one.photo.attach(io: one, filename: "01_muse_Victoria-and-Albert-museum-London_yqxpqc.jpg" , content_type: 'image/jpg')



a_two = Activity.create(
  name: "British Museum Theatre",
  address: "Great Russell St, Bloomsbury, London WC1B 3DG",
  open_hour: "10:00-17:30",
  phone_number: "020 7323 8299",
  category: "Theatre"
)

a_two.photo.attach(io: two, filename: "02_replace_british_museum_cim7lu.jpg" , content_type: 'image/jpg')


a_three = Activity.create(
  name: "Tate Modern Sport",
  address: "Bankside, London SE1 9TG",
  open_hour: "10:00-18:00",
  phone_number: "020 7887 8888",
  category: "Sport"
)

a_three.photo.attach(io: three, filename: "03_muse_RIB-0019996-1360x765_zma1gz.jpg" , content_type: 'image/jpg')



a_four = Activity.create(
  name: "Natural History Museum",
  address: "Cromwell Rd, South Kensington, London SW7 5BD",
  open_hour: "10:00-17:50",
  phone_number: "020 7942 5000",
  category: "Museum"
)

a_four.photo.attach(io: four, filename: "4_muse_Natural-History-Museum_bddygg.jpg" , content_type: 'image/jpg')


a_five = Activity.create(
  name: "The National Gallery",
  address: "Trafalgar Square, Charing Cross, London WC2N 5DN",
  open_hour: "10:00-18:00",
  phone_number: "020 7747 2885",
  category: "Museum"
)

a_five.photo.attach(io: five, filename: "05_national-gallery-view-from-trafalgar-square-p3346_007_w3faci.jpg" , content_type: 'image/jpg')


a_six = Activity.create(
  name: "Design Museum",
  address: "224-238 Kensington High St, Kensington, London W8 6AG",
  open_hour: "10:00-18:00",
  phone_number: "020 3862 5900",
  category: "Museum"
)

a_six.photo.attach(io: six, filename: "Untitled_design_rtvzta.png" , content_type: 'image/png')

# weekend market

a_seven = Activity.create(
  name: "Broadway Market",
  address: "Broadway Market, E8 4QJ",
  open_hour: "Saturdays 9:00-17:00.",
  phone_number: "",
  category: "Market"
)

# a_one.photo.attach(io: one, filename: "Untitled_design_rtvzta.png" , content_type: 'image/png')


a_eight = Activity.create(
  name: "Netil Market",
  address: "13-23 Westgate Street, E8 3RL",
  open_hour: "Saturdays, 11:00-18:00",
  phone_number: "",
  category: "Market"
)

# a_one.photo.attach(io: one, filename: "Untitled_design_rtvzta.png" , content_type: 'image/png')


a_nine = Activity.create(
  name: "Victoria Park Market",
  address: "56-57, Gore Rd, London E9 7HN",
  open_hour: "Sundays 10:00-16:00",
  phone_number: "",
  category: "Market"
)

# a_one.photo.attach(io: one, filename: "Untitled_design_rtvzta.png" , content_type: 'image/png')


a_ten = Activity.create(
  name: "Brick Lane Market",
  address: "Brick Ln, Spitalfields, London E1 6QR",
  open_hour: "10:00-18:00",
  phone_number: "",
  category: "Market"
)

# a_one.photo.attach(io: one, filename: "Untitled_design_rtvzta.png" , content_type: 'image/png')


a_eleven = Activity.create(
  name: "Old Spitalfields Market",
  address: "16 Commercial St, Spitalfields, London E1 6EW",
  open_hour: "10:00-18:00",
  phone_number: "",
  category: "Market"
)
# a_one.photo.attach(io: one, filename: "Untitled_design_rtvzta.png" , content_type: 'image/png')


#sport
a_twelve = Activity.create(
  name: "Bloomsbury Lanes",
  address: "Tavistock Hotel Bedford Way London WC1H 9EU",
  open_hour: "12:00-0:00",
  phone_number: "020 7183 1979",
  category: "Sport"
)

# a_one.photo.attach(io: one, filename: "Untitled_design_rtvzta.png" , content_type: 'image/png')

a_thirteen = Activity.create(
  name: "Bounce Old Street",
  address: "241 Old St, Old Street, London EC1V 9EY",
  open_hour: "16:00-0:00",
  phone_number: "",
  category: "Sport"
)
































