class Artist < ApplicationRecord
  acts_as_favoritable

  belongs_to :user
  has_many :favorite_artists

  validates :biography, presence: true

  validates :biography, length: { maximum: 250 }
end
