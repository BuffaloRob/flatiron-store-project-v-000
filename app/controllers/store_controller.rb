class StoreController < ApplicationController

  def index
    @categories = Category.all
    @items = Item.available_items.order(:title)
    # binding.pry
  end

end
