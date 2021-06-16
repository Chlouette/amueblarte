class AddStatusColumnToBasket < ActiveRecord::Migration[6.0]
  def change
    add_column :baskets, :paid, :boolean
  end
end
