class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one :artist

  has_many :favorite_artists
  has_many :artists, through: :favorite_artists

  has_many :items
  has_many :bookings
  has_many :favorite_items

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
