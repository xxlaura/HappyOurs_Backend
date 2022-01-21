json.user do
    json.id @user.id
    json.nickname @user.nickname
    json.avatar @user.avatar
    json.events_as_host do
      json.array! @user.events do |event|
        json.extract! event, :id, :name, :summary, :location, :capacity, :event_image_urls, :user_id, :duration
        if event.begins_at != nil
        json.begins_at event.begins_at.strftime("%a %e %b %Y")
        end
      end
    end

    json.events_as_goer do
    json.array! @events_as_goer do |reservation|
      json.extract! reservation.event,
        :id,
        :name,
        :summary,
        :description,
        :location,
        :capacity,
        :event_image_urls,
        :user_id,
        :duration,
        :drink_type,
        :event_type_id,
        :published
        if reservation.event.begins_at != nil
        # json.begins_at event.begins_at.strftime("%a %e %b %Y")
        json.begins_at reservation.event.begins_at.strftime("%a %e %b %Y")
        end
      end
  end
end
