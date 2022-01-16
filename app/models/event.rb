class Event < ApplicationRecord
  include PgSearch::Model
  has_one_attached :event_image

  belongs_to :user
  belongs_to :event_type
  has_many :reservations
  has_many :event_drinks, class_name: "EventDrink"
  has_many :drinks, through: :event_drink, class_name: "Drink"

  validates :name, presence: true, uniqueness: true
  validates :location, presence: true
  validates :begins_at, presence: true
  validates :duration, presence: true
  validates :capacity, presence: true
  validates :event_image, presence: true
  # validates :drinks, presence: true

  pg_search_scope :search_by_event_and_drink,
  against: %i[name summary description],
  associated_against: {
    drinks: %i[name summary description]
  },
  using: {
    tsearch: { prefix: true }
  }
end
