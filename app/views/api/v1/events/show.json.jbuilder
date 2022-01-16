# json.event do
#   json.id @event.id
#   json.name @event.name
#   json.summary @event.summary
#   json.description @event.description
#   json.location @event.location
#   json.capacity @event.capacity
#   # json.event_type @event.event_type
#   json.event_image @event.event_image
#   json.begins_at @event.begins_at
#   json.duration @event.duration
# end

#drink
json.extract! @event, :id, :name, :summary, :description, :location, :capacity, :begins_at, :duration
