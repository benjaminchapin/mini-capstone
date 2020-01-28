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

    if params[:search]
      @products = @products.where("name iLIKE ?", "%#{params[:search]}%")
    end

    if params[:discount]
      @products = @products.where("price < ?", 21)
    end

    if params[:sort] == "price" && params[:sort_order] == "asc"
      @products = @products.order(:price)
    elsif params[:sort] == "price" && params[:sort_order] ==  "desc"
      @products = @products.order(price: :desc)
    else
      @products = @products.order(:id)
    end

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
    )
    if @product.save
      render "show.json.jb"
    else
      render json: {errors: @product.errors.full_messages}, status: 422
    end  
  end

  def update
    @product = Product.find_by(id: params["id"])

    @product.name = params[:name] || @product.name
    @product.description = params[:description] || @product.description
    @product.price = params[:price] || @product.price

    if @product.save
      render "show.json.jb"
    else
      render json: {errors: @product.errors.full_messages}, status: 422
    end  
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    render json: {message: "Product successfully destroyed!"}
  end
end
