json.user do
    json.id @user.id
    json.nickname @user.nickname
    json.avatar @user.avatar
    json.events_as_host do
      json.array! @user.events do |event|
      json.extract! event,
        :id,
        :name,
        :summary,
        :description,
        :location,
        :capacity,
        :event_image_urls,
        :user_id,
        :begins_at,
        :duration,
        :drink_type,
        :event_type_id,
        :published
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
        :begins_at,
        :duration,
        :drink_type,
        :event_type_id,
        :published
        # json.partial! 'events/event', event: @user.events_as_goer
      end
  end
end
