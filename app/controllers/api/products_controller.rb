class Api::ProductsController < ApplicationController

  def allproducts_action
    @product = Product.all  
    render "allproducts.json.jb"
  end

  def product1_action
    @product = Product.first  
    render "product1.json.jb"
  end

  def product2_action 
    @product = Product.second
    render "product2.json.jb"
  end

  def product_query_action
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
    render "any_product.json.jb"
  end

end
