class Bookmark < ApplicationRecord
  belongs_to :category
  belongs_to :recipe

  validates :category_id, uniqueness: { scope: :recipe_id }
  validates :comment, length: { minimum: 6 }
end
