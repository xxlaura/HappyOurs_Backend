# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Event.destroy_all
EventType.destroy_all

p "Destroyed all events"

EventType.create(
  id: 1,
  name: 'tasting'
)

10.times do
  event = Event.create(
    user_id: 1,
    name: Faker::TvShows::TheExpanse.ship,
    summary: Faker::TvShows::TheExpanse.quote,
    description: Faker::TvShows::TheExpanse.quote,
    location: Faker::TvShows::TheExpanse.location,
    begins_at: Faker::Date.between(from: '2021-01-01', to: '2022-12-31'),
    duration: rand(100..200),
    # end_time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now,
    capacity: rand(0..20),
    event_image: "PlaceholderImageURL",
    published: true,
    event_type_id: 1
  )
  event.save!
end

gin_tasting = Event.create(
  user_id: 1,
  name: 'Gin Tasting',
  summary: 'This is a tasting event for Gin',
  description: 'This is a tasting event for Gin. We love Gin',
  location: 'Cottons',
  begins_at: '2022-02-01',
  duration: rand(100..200),
  # end_time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now,
  capacity: rand(0..20),
  event_image: "PlaceholderImageURL",
  published: true,
  event_type_id: 1
)
gin_tasting.save!

p 'gin_tasting seeded'

wine_tasting = Event.create(
    user_id: 1,
    name: 'wine Tasting',
    summary: 'This is a tasting event for wine',
    description: 'This is a tasting event for wine. We love wine',
    location: 'Cottons',
    begins_at: '2022-02-01',
    duration: rand(100..200),
    # end_time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now,
    capacity: rand(0..20),
    event_image: "PlaceholderImageURL",
    published: true,
    event_type_id: 1
  )
wine_tasting.save!

p 'wine_tasting seeded'

tea_tasting = Event.create(
    user_id: 1,
    name: 'tea Tasting',
    summary: 'This is a tasting event for tea',
    description: 'This is a tasting event for witeane. We love tea',
    location: 'Cottons',
    begins_at: '2022-02-01',
    duration: rand(100..200),
    # end_time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now,
    capacity: rand(0..20),
    event_image: "PlaceholderImageURL",
    published: true,
    event_type_id: 1
  )
tea_tasting.save!

p 'tea_tasting seeded'

p "Seeding all"

        #     rand(0..20).times do
        #         Reservation.create(
        #             phone_number: Faker::PhoneNumber.phone_number,
        #         )
        #     end
        # event.save!
