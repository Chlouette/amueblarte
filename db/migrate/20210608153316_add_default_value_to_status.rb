class AddDefaultValueToStatus < ActiveRecord::Migration[6.0]
  def change
    change_column :items, :status, :string, default: 'to be collected'
  end
end
