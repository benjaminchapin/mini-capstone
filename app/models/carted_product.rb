class CartedProduct < ApplicationRecord
  belongs_to :product
  belongs_to :order
  belongs_to :order, optional: true 
end
