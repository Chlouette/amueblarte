class DeleteUserIdFromBasketItems < ActiveRecord::Migration[6.0]
  def change
    remove_column :basket_items, :user_id
  end
end
