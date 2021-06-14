class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  acts_as_favoritor

  has_one :artist, dependent: :destroy
  has_one_attached :photo

  has_many :favorite_artists
  has_many :artists, through: :favorite_artists
  has_many :baskets

  has_many :items, dependent: :destroy
  has_many :bookings
  has_many :favorite_items

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
