class FavoriteItem < ApplicationRecord
  belongs_to :user
  belongs_to :item

  validates :name, :description, :category, presence: true
  validates
end
