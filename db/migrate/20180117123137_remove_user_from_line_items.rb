class RemoveUserFromLineItems < ActiveRecord::Migration
  def change
    remove_column :line_items, :user
  end
end
