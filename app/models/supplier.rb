class Supplier < ApplicationRecord

  has_many :products #association method

  # def products
  #   Product.where(supplier_id: id) #array of all products associated with this supplier
  # end

end
