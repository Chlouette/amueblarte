class AddBasketIdToBasketItems < ActiveRecord::Migration[6.0]
  def change
    add_reference :basket_items, :basket, null: false, foreign_key: true
  end
end
