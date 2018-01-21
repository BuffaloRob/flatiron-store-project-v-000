class AddCurrentCartIdToUser < ActiveRecord::Migration
  def change
    add_reference :users, :current_cart
  end
end
