class Api::ProductsController < ApplicationController

  # def allproducts_action
  #   product_id = params[:id]
  #   @product = Product.all  
  #   render "allproducts.json.jb"
  # end

  # def product1_action
  #   @product = Product.first  
  #   render "product1.json.jb"
  # end

  # def product2_action 
  #   @product = Product.second
  #   render "product2.json.jb"
  # end

  # def product_query_action
  #   product_id = params[:id]
  #   @product = Product.find_by(id: product_id)
  #   render "any_product.json.jb"
  # end

  def index 
    @products = Product.all
    render "index.json.jb"
  end

  def show
    @product = Product.find_by(id:params["id"])
    render "show.json.jb"
  end

  def create
    @product = Product.new(
    name: params["name"],
    description: params["description"],
    price: params["price"],
    image_url: params["image_url"]
    )
    if @product.save
      render "show.json.jb"
    else
      render json: {errors: @product.errors.full_messages}  
  end

  def update
    @product = Product.find_by(id: params["id"])

    @product.name = params[:name] || @product.name
    @product.description = params[:description] || @product.description
    @product.price = params[:price] || @product.price
    @product.image_url = params[:image_url] || @product.image_url
 
    render "show.json.jb"
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    render json: {message: "Product successfully destroyed!"}
  end
end
