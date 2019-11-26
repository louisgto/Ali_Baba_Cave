class Piece < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :transact

  validates :title, presence: true, uniqueness: true
  validates :artist, presence: true
  validates :year, presence: true
  validates :description, presence: true
  validates :price, presence: true
end
