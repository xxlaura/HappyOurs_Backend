json.events do
  json.array! @events do |event|
    json.partial! 'event', event: event
    json.date event.begins_at.strftime("%a %e %b %Y")
  end
end
