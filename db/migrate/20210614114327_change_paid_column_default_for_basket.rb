class ChangePaidColumnDefaultForBasket < ActiveRecord::Migration[6.0]
  def change
    change_column :baskets, :paid, :boolean, :default => false
  end
end
