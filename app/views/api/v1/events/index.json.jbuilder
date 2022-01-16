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
