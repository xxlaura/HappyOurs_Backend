json.event do
    json.(@event, 
        :id, 
        :name, 
        :summary, 
        :description, 
        :location, 
        :capacity, 
        :event_type, 
        :event_image, 
        :begins_at, 
        :duration)
  end
  