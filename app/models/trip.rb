class Trip < ApplicationRecord
  belongs_to :owner, class_name: "User"
  has_many :notes
  has_many :goals
  has_many_attached :photos
  has_many :collaborations
  has_many :users, through: :collaborations
  # users ? guest_id

  validates :destination, presence: true
end
