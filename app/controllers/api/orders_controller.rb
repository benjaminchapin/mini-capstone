class Api::OrdersController < ApplicationController
  
  before_action :authenticate_user

  def create
    @product = Product.find(params[:product_id])
    calculated_subtotal = params[:quantity].to_i * @product.price
    calculated_tax = calculated_subtotal * 0.09
    calculated_total = calculated_subtotal + calculated_tax


    @order = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: calculated_subtotal,
      tax:  calculated_tax,
      total: calculated_total
    )
    if @order.save
      render "show.json.jb"
    else
      render json: {errors: @order.errors.full_messages}, status: unprocessable_entity
    end
  end

  def show
    @order = Order.find(params[:id])
    render "show.json.jb"
  end

  def index
    @orders = current_user.orders
    render "index.json.jb"   
  end

end
