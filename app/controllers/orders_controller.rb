class OrdersController < ApplicationController
	before_action :authenticate_user!
  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
    @order = Order.new




      @cart.line_items.each do |item|
      @order.line_items 
      item.cart_id = nil
      end
    @order.save
    Cart.destroy(session[:cart_id])
    session[:cart_id] = nil
    redirect_to root_path  
  end



end


