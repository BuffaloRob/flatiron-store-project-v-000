class Cart < ActiveRecord::Base
  has_many :line_items
  has_many :items, through: :line_items

  def total
    items.map do |item| 
      item.price
    end.sum
  end

  def add_item(itemid)
    line_item = line_items.find_by(item_id: itemid)
    if items.ids.include?(line_item)
      line_item.update(quantity: (line_item.quantity + 1))
    else
      line_items.new(item_id: itemid)
    end   
  end

end
