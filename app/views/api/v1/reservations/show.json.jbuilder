json.reservation do
    json.id @reservation.id
    json.user_id @reservation.user_id
    json.event_id @reservation.event_id
    json.phonenumber @reservation.phonenumber
end