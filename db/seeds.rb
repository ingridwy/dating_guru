# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Activity.destroy_all
User.create! email: "test@gmail.com", password: "123456"


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

