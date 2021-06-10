class Artist < ApplicationRecord
  belongs_to :user
  has_many :favorite_artists

  validates :biography, presence: true
  # validates :biography, length: { maximum: 100 }
end
