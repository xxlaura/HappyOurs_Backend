json.popular_events do
  json.array! @popular_events do |event|
    json.partial! 'event', event: event
    if event.begins_at != nil
      json.begins_at event.begins_at.strftime("%a %e %b %Y")
    end
  end
end

json.upcoming_events do
  json.array! @upcoming_events do |event|
    json.partial! 'event', event: event
    json.begins_at event.begins_at.strftime("%a %e %b %Y")
  end
end
