class CartsController < ApplicationController

  def show
    @cart = Cart.find(params[:id])
  end

  # def create
  #   @cart = Cart.find(session[:cart_id])
  # rescue ActiveRecord::RecordNotFound
  #   @cart = Cart.create
  #   session[:cart_id] = @cart.id
  # end
  
end
