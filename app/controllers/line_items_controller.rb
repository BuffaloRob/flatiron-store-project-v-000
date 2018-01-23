class LineItemsController < ApplicationController
  # def create
  #   chosen_item = Item.find(params[:item_id])
  #   current_cart = @current_cart

  #   if current_cart.item.include?(chosen_item)
  #     @line_item = current_cart.line_items.find_by(:item_id => chosen_item)
  #     @line_item.quantity += 1
  #   else
  #     @line_item = LineItem.new
  #     @line_item.cart = current_cart
  #     @line_item.item = chosen_item
  #   end 

  #   @line_item.save
  #   redirect_to cart_path(current_cart)
  # end

  def create
    current_user.create_current_cart unless current_user.current_cart
    line_item = current_user.current_cart.add_item(params[:item_id])
    if line_item.save
      redirect_to cart_path(current_user.current_cart), {notice: 'Item added to cart'}
    else
      redirect_to store_path, {notice: 'unable to add item'}
    end
  end

  private

  def line_item_params
    params.require(:line_item).permit(:quantity, :item_id, :cart_id)
  end

end
