class Item < ActiveRecord::Base
  belongs_to :category
  has_many :line_items

   def self.available_items
    if self.inventory >= 1
      # binding.pry
      self.title
    end
  end

end
