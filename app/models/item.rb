class Item < ApplicationRecord
  belongs_to :user

  has_many :bookings
  has_many :favorite_items

  validates :name, :description, :category, presence: true
end
