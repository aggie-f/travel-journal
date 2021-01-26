class Note < ApplicationRecord
  belongs_to :trip
  has_many :notes_categories, dependent: :destroy
  has_many :categories, through: :notes_categories
  validates :content, presence: true
end
