json.events do
  json.array! @events do |event|
    json.extract! event,
    :name,
    :summary,
    :description,
    :location,
    :capacity,
    :event_image,
    :user_id,
    :begins_at,
    :duration,
    :event_type_id,
    :published
  end
end
