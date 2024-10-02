class Recipe < ApplicationRecord
  has_many :bookmarks
  has_many :categories, through: :bookmarks
  has_one_attached :photo
  validates :description, :name, presence: true
  validates :name, uniqueness: true
  validates :rating, numericality: { in: 0..10 }
end
