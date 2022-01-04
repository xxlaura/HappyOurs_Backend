json.events do
  json.array! @events do |event|
    json.extract! event, :name, :summary, :description, :location, :capacity, :event_type, :event_image, :user_id, :begins_at, :duration, :eventtypes_id, :published
        # json.extract! event, :name, :summary, :description, :location, :seat_capacity, :event_type, :event_image, :user_id, :begins_at, :duration, :eventtypes_id, :published
  end
end
