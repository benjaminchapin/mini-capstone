# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

product = Product.new(
  name: "shirt",
  price: "20",
  image_url: "https://cdn.shopify.com/s/files/1/0918/8376/products/gpk_adambuttonup2_01_2000x.jpg?v=1529554240",
  description: "Garbage Pail Kids blue button down shirt size L"
  )

product.save

product = Product.new(
  name: "towel",
  price: "10",
  image_url: "https://i.ebayimg.com/images/g/hUIAAOSwBLlVON5b/s-l300.jpg",
  description: "Towelie towel"
  )

product.save