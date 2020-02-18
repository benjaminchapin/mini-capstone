class Order < ApplicationRecord
  belongs_to :user
  has_many :carted_products
  has_many :products, through: :carted_products

  # def subtotal
  #   product.price * order.quantity
  # end


end
