# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# product = Product.new(
#   name: "shirt",
#   price: "20",
#   image_url: "https://cdn.shopify.com/s/files/1/0918/8376/products/gpk_adambuttonup2_01_2000x.jpg?v=1529554240",
#   description: "Garbage Pail Kids blue button down shirt size L"
#   )

# product.save

# product = Product.new(
#   name: "towel",
#   price: "10",
#   image_url: "https://i.ebayimg.com/images/g/hUIAAOSwBLlVON5b/s-l300.jpg",
#   description: "Towelie towel"
#   )

# product.save

# supplier = Supplier.new(
#     name: "Big Lots",
#     email: "supply@biglots.com",
#     phone_number: "834-986-3463")
# supplier.save

# supplier = Supplier.new(
#   name: "Costco",
#   email: "supply@costco.com",
#   phone_number: "358-235-8363")
# supplier.save

# supplier = Supplier.new(
#   name: "DHgate",
#   email: "supply@dhgate.com",
#   phone_number: "246-235-9623")
# supplier.save

Image.create([
  {
    url: "https://cdn.shopify.com/s/files/1/0918/8376/products/gpk_adambuttonup2_01_2000x.jpg?v=1529554240",
    product_id: 1
  }, {
    url: "https://i.ebayimg.com/images/g/hUIAAOSwBLlVON5b/s-l300.jpg",
    product_id: 2
  }, {
    url: "https://cdn.shopify.com/s/files/1/1440/9434/products/jugg-4_600x600.jpg?v=1556599758",
    product_id: 3
  },{
    url: "https://cdn.shopify.com/s/files/1/1440/9434/products/jugg-4_600x600.jpg?v=1556599758",
    product_id: 3
  },{
    url: "https://www.rebelparty.com/wp-content/uploads/2017/08/GREEN-ASTROTURF.jpg",
    product_id: 4
  },{
    url: "https://alc-live.storage.googleapis.com/upload/img_cache/file-1445-cd6c870cd5103c5ce4065fcf94303f14.jpg",
    product_id: 4
  },{
    url: "https://i.ebayimg.com/images/g/iiMAAOSwnBpdH7C-/s-l400.jpg",
    product_id: 3
  },{
    url: "https://cdn.shopify.com/s/files/1/0918/8376/products/gpk_adambuttonup2_jasonpic01_2000x.jpg?v=1529554240",
    product_id: 1
  },{
    url: "https://cdn.shopify.com/s/files/1/0918/8376/products/gpk_adambuttonup2_02_2000x.jpg?v=1529554240",
    product_id: 1
  },{
    url: "https://images-na.ssl-images-amazon.com/images/I/91WRb6FKe8L._AC_SL1500_.jpg",
    product_id: 2
  },{
    url: "https://screeninvasion.com/wp-content/uploads/2013/11/Towelie-Towel.jpg",
    product_id: 2
  },{
    url: "https://s3.amazonaws.com/blogs.comedycentral.com-production/wp-content/uploads/sites/58/2014/04/SP_TOWELIE_TowelSale.jpg",
    product_id: 2
  },
])