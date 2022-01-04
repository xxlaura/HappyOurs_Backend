class EventDrink < ApplicationRecord
  belongs_to :event
  belongs_to :drink
end
