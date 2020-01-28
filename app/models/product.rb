class Product < ApplicationRecord
  validates :name, presence: true

  validates :name, uniqueness: true

  validates :description, length: { in: 10..500 }

  validates :price, numericality: { greater_than: 0 }

  #model method
  def is_discounted?
    price < 10
  end

  def tax
    price * (0.09)
  end

  def total
    price + tax
  end

  belongs_to :supplier #association method

  has_many :images

  # def supplier
  #   Supplier.find_by(id: supplier_)
  # end

end