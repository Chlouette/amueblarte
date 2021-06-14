class AddPriceToItems < ActiveRecord::Migration[6.0]
  def change
    add_monetize :items, :price, currency: { present: false }
  end
end
