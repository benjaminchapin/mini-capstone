class Product < ApplicationRecord

  belongs_to :supplier
  has_many :carted_products
  has_many :orders, through: :carted_products
  has_many :product_categories
  has_many :categories, through: :product_categories
  has_many :images

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

  def category_ids
    categories.map { |category| category.name}
  end

  # def supplier
  #   Supplier.find_by(id: supplier_)
  # end

end