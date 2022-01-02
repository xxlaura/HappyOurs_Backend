class Event < ApplicationRecord
  belongs_to :user
  has_many :reservations
  has_many :drinks, through: :eventdrink

  validates :name, presence: true, uniqueness: true
  validates :location, presence: true
  # validates :event_date, presence: true
  validates :begins_at, presence: true
  validates :seat_capacity, presence: true
  validates :event_image, presence: true
  # validates :drinks, presence: true

  # multisearchable against: [:name]
  include PgSearch::Model
  pg_search_scope :search_by_event_and_drink, against: :name,
  associated_against: {
    drink: %i[name summary discription]
  },
  using: {
    tsearch: { prefix: true }
  }
end
