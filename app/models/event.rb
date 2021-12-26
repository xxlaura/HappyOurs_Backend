class Event < ApplicationRecord
belongs_to :user
has_many :sign_ups

validates :name, presence: true, uniqueness: true
# validates :drinks, presence: true
validates :location, presence: true
validates :event_date, presence: true
validates :start_time, presence: true
validates :end_time, presence: true
validates :seat_capacity, presence: true
validates :event_image, presence: true


end
