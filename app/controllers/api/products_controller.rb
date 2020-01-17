class Api::ProductsController < ApplicationController

  def allproducts_method
    @product = Product.all  
    render "allproducts.json.jb"
  end

  def product1_method
    @product = Product.first  
    render "product1.json.jb"
  end

  def product2_method 
    @product = Product.second
    render "product2.json.jb"
  end

end
