class Trip < ApplicationRecord
  belongs_to :owner, class_name: "User"
  has_many :notes, dependent: :destroy
  has_many :goals, dependent: :destroy
  has_many :collaborations
  has_many :guests, source: :user, through: :collaborations

  validates :destination, presence: true
end
