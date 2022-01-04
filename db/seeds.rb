# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Event.destroy_all
Eventtype.destroy_all

p "Destroyed all events"

Eventtype.create(
  id: 1,
  name: 'tasting'
)

10.times do
  Event.create(
    user_id: rand(1..3),
    name: Faker::TvShows::TheExpanse.ship,
    summary: Faker::TvShows::TheExpanse.quote,
    description: Faker::TvShows::TheExpanse.quote,
    location: Faker::TvShows::TheExpanse.location,
    begins_at: Faker::Date.between(from: '2021-01-01', to: '2022-12-31'),
    duration: rand(100..200),
    # end_time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now,
    seat_capacity: rand(0..20),
    event_image: "PlaceholderImageURL",
    published: true,
    eventtypes_id: 1
  )
end

p "Seeding all"

            # rand(0..20).times do
            #     Reservation.create(
            #         phone_number: Faker::PhoneNumber.phone_number,
            #     )
            # end
        # event.save!
