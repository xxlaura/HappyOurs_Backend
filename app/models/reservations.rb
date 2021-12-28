class Reservations < ApplicationRecord
  belongs_to :user
  belongs_to :event

  validates :drinks, presence: true

end
