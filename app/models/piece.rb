class Piece < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :transacts, dependent: :destroy

  validates :title, presence: true
  validates :artist, presence: true
  validates :year, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :address, presence: true
end
