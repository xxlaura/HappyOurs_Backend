json.events do
  json.array! @events do |event|
    json.partial! 'event', event: event
  end
end
