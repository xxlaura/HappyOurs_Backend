json.events do
  json.array! @events do |event|
    json.partial! 'event', event: event
    json.begins_at event.begins_at&.strftime("%a %e %b %Y")
  end
end
