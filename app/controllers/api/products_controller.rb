class Api::ProductsController < ApplicationController

  def product_method
    @product = Product.all  
    render "product.json.jb"
  end

  def product1_method
    @product1 = Product.first  
    render "product1.json.jb"
  end

end
