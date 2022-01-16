json.upcoming_events do
  json.array! @upcoming_events do |event|
    json.partial! 'event', event: event
  end
end

json.popular_events do
  json.array! @popular_events do |event|
    json.partial! 'event', event: event
  end
end
# json.upcoming_events do
#     json.array! @upcoming_events do |event|
#       json.extract! event,
#       :id,
#       :name,
#       :summary,
#       :description,
#       :location,
#       :capacity,
#       :event_image,
#       :user_id,
#       :begins_at,
#       :duration,
#       :event_type_id,
#       :published
#     end
#   end

#  json.popular_events do
#     json.array! @popular_events do |event|
#       json.extract! event,
#       :id,
#       :name,
#       :summary,
#       :description,
#       :location,
#       :capacity,
#       :event_image,
#       :user_id,
#       :begins_at,
#       :duration,
#       :event_type_id,
#       :published
#     end
#   end
