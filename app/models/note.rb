class Note < ApplicationRecord
  belongs_to :trip
  has_many :notes_categories
  has_many :categories, through: :notes_categories
  validates :content
end
