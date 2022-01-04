class Drink < ApplicationRecord
  include PgSearch::Model

  belongs_to :eventdrink
  has_many :events, through: :eventdrink

  pg_search_scope :drink_search, associated_against: {
    events: [:name],
    eventdrink: :kind
  }
end
