class Drink < ApplicationRecord
  include PgSearch::Model

  belongs_to :event_drink
  has_many :events, through: :event_drink

  pg_search_scope :drink_search, associated_against: {
    events: [:name],
    event_drink: :kind
  }
end
