class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :category
      t.string :name
      t.text :description
      t.string :color
      t.string :status

      t.timestamps
    end
  end
end
