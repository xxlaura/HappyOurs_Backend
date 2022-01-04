json.events do
  json.array! @events do |event|
    json.extract! event, :id, :name, :description, :category, :user
  end
end
