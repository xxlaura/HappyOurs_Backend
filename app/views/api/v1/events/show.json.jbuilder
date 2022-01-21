json.partial! 'event', event: @event
json.datetime @event.begins_at.strftime("%A %e %b %Y %H:%M")
json.hr @event.duration/60
json.min @event.duration%60
