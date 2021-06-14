class AddCheckoutSessionIdToBasket < ActiveRecord::Migration[6.0]
  def change
    add_column :baskets, :checkout_session_id, :string
  end
end
