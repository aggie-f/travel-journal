class Trip < ApplicationRecord
  has_many :notes
  has_many :goals

  validates :destination, presence: true
end
