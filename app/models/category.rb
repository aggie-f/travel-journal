class Category < ApplicationRecord
  has_many :notes_categories, dependent: :destroy
  has_many :notes, through: :notes_categories
end
