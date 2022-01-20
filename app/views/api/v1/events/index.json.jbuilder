json.popular_events do
  json.array! @popular_events do |event|
    json.partial! 'event', event: event
  end
end

json.upcoming_events do
  json.array! @upcoming_events do |event|
    json.partial! 'event', event: event
    json.date event.begins_at.strftime("%a %e %b %Y")
  end
end
