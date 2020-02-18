class ProductsController < ApplicationController

  def show
    @product = Product.find(params[:id])
    render "show.html.erb"
  end

  def index
    @products = Product.all
    render "index.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    @product = Product.new(
      name: params[:name],
      description: params[:description],
      price: params[:price],
      supplier_id: params[:supplier_id]
    )
    @product.save
    @image = Image.new(
      url: params[:image_url],
      product_id: @product.id
    )
    @image.save
    redirect_to "/products/#{@product.id}"
  end

  def edit
    @product = Product.find(params[:id])
    render "edit.html.erb"
  end

  def update
    @product = Product.find(id: param[:id])
    @product.name = params[:name]
    @product.price = params[:price]
    @product.images = params[:images]
    @supplier_id = params[:supplier_id]
    @product.save
    redirect to "/products/#{@product.id}"
  end

  def destroy
    @product = Product.find_by(id:params["id"])
    @product.destroy
    redirect_to "/products"
  end

end
