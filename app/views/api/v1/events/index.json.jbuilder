json.events do
  json.array! @events do |event|
    json.extract! event,
    :id,
    :name,
    :summary,
    :description,
    :location,
    :capacity,
    :event_image_urls,
    :user_id,
    :begins_at,
    :duration,
    :drink_type,
    :event_type_id,
    :published
  end
end
