json.partial! 'event', event: @event
if @event.begins_at != nil
    json.datetime @event.begins_at.strftime("%Z %A %e %b %Y %H:%M")
end

if @event.duration != nil
  json.hr @event.duration/60
  json.min @event.duration%60
end
