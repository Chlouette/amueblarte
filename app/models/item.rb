class Item < ApplicationRecord
  acts_as_favoritable

  belongs_to :user

  has_many :bookings
  has_many :favorite_items
  has_many_attached :photos
  monetize :price_cents
  


  validates :name, :description, :category, presence: true

  validates :category, inclusion: { in: [
    "Sofa", "Chair", "Bench",
    "Bed", "Drawers", "Table",
    "Desk", "Stool", "Cupboard",
    "Side Table", "Lamp", "Coat Stand",
    "Shelves", "Wine Rack", "Coffee Table"
  ] }

  COLORS = [
    "black",
    "blue",
    "brown",
    "gold",
    "green",
    "grey",
    "neutral",
    "orange",
    "pink",
    "purple",
    "red",
    "white",
    "yellow"
  ]
end
