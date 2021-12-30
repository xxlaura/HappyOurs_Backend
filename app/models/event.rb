class Event < ApplicationRecord
belongs_to :user
has_many :reservations

validates :name, presence: true, uniqueness: true
validates :location, presence: true
validates :event_date, presence: true
validates :begins_at, presence: true
validates :seat_capacity, presence: true
validates :event_image, presence: true

  include PgSearch::Model
end
