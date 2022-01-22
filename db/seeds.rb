# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

Event.destroy_all
EventType.destroy_all

p "Destroyed all events"

EventType.create(
  name: 'tasting'
)

wine_tasting = Event.create(
  user_id: User.first.id,
  name: 'Wine Tasting',
  summary: 'This is a tasting event for Wine',
  description: 'This is a tasting event for Wine. We love Wine',
  location: 'Cottons',
  begins_at: Faker::Date.between(from: '2021-02-01', to: '2022-12-31'),
  duration: rand(100..200),
  capacity: rand(0..20),
  published: true,
  drink_type: 'wine',
  event_type_id: EventType.first.id
)
file = URI.open('https://images.unsplash.com/photo-1510812431401-41d2bd2722f3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80')
wine_tasting.event_images.attach(io: file, filename: 'wine.png', content_type: 'image/png')
p 'wine_tasting seeded'


gin_tasting = Event.create(
  user_id: User.first.id,
  name: 'Gin Tasting',
  summary: 'This is a tasting event for Gin',
  description: 'This is a tasting event for Gin. We love Gin',
  location: 'Cottons',
  begins_at: Faker::Date.between(from: '2021-02-01', to: '2022-12-31'),
  duration: rand(100..200),
  capacity: rand(0..20),
  published: true,
  drink_type: 'gin',
  event_type_id: EventType.first.id
)
file = URI.open('https://images.unsplash.com/photo-1551538827-9c037cb4f32a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=930&q=80')
gin_tasting.event_images.attach(io: file, filename: 'gin.png', content_type: 'image/png')
p 'gin_tasting seeded'

coffee_tasting = Event.create(
  user_id: User.first.id,
  name: 'Coffee Tasting',
  summary: 'This is a tasting event for Coffee',
  description: 'This is a tasting event for Coffee. We love Coffee',
  location: 'Coffee Is',
  begins_at: Faker::Date.between(from: '2021-02-01', to: '2022-12-31'),
  duration: rand(100..200),
  capacity: rand(0..20),
  published: true,
  drink_type: 'coffee',
  event_type_id: EventType.first.id
)
file = URI.open('https://images.unsplash.com/photo-1509042239860-f550ce710b93?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80')
coffee_tasting.event_images.attach(io: file, filename: 'coffee.png', content_type: 'image/png')
p 'coffee_tasting seeded'

tea_tasting = Event.create(
  user_id: User.first.id,
  name: 'Tea Tasting',
  summary: 'This is a tasting event for Tea',
  description: 'This is a tasting event for Tea. We love Tea',
  location: 'Harrods',
  begins_at: Faker::Date.between(from: '2021-02-01', to: '2022-12-31'),
  duration: rand(100..200),
  capacity: rand(0..20),
  published: true,
  drink_type: 'tea',
  event_type_id: EventType.first.id
)
file = URI.open('https://images.unsplash.com/photo-1594631252845-29fc4cc8cde9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80')
tea_tasting.event_images.attach(io: file, filename: 'tea.png', content_type: 'image/png')
p 'tea_tasting seeded'

beer_tasting = Event.create(
  user_id: User.first.id,
  name: 'Beer Tasting',
  summary: 'This is a tasting event for Beer',
  description: 'This is a tasting event for Beer. We love Beer',
  location: 'Boxing Cat',
  begins_at: Faker::Date.between(from: '2021-02-01', to: '2022-12-31'),
  duration: rand(100..200),
  capacity: rand(0..20),
  published: true,
  drink_type: 'beer',
  event_type_id: EventType.first.id
)
file = URI.open('https://images.unsplash.com/photo-1567696911980-2eed69a46042?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80')
beer_tasting.event_images.attach(io: file, filename: 'beer.png', content_type: 'image/png')
p 'beer_tasting seeded'

mulledwine_tasting = Event.create(
  user_id: User.first.id,
  name: 'Mulled Wine Tasting',
  summary: 'This is a tasting event for Mulled Wine',
  description: 'This is a tasting event for Mulled Wine. We love Mulled Wine',
  location: 'Bistro 11',
  begins_at: Faker::Date.between(from: '2021-02-01', to: '2022-12-31'),
  duration: rand(100..200),
  capacity: rand(0..20),
  published: true,
  drink_type: 'wine',
  event_type_id: EventType.first.id
)
file = URI.open('https://images.unsplash.com/photo-1602249367848-8468f3979e63?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=790&q=80')
mulledwine_tasting.event_images.attach(io: file, filename: 'mulledwine.png', content_type: 'image/png')
p 'wulledwine_tasting seeded'


# p 'gin_tasting seeded'

# wine_tasting = Event.create(
#     user_id: 1,
#     name: 'wine Tasting',
#     summary: 'This is a tasting event for wine',
#     description: 'This is a tasting event for wine. We love wine',
#     location: 'Cottons',
#     begins_at: '2022-02-01',
#     duration: rand(100..200),
#     # end_time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now,
#     capacity: rand(0..20),
#     event_image: "PlaceholderImageURL",
#     published: true,
#     event_type_id: 1
#   )
# wine_tasting.save!

# p 'wine_tasting seeded'

# tea_tasting = Event.create(
#     user_id: 1,
#     name: 'tea Tasting',
#     summary: 'This is a tasting event for tea',
#     description: 'This is a tasting event for witeane. We love tea',
#     location: 'Cottons',
#     begins_at: '2022-02-01',
#     duration: rand(100..200),
#     # end_time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now,
#     capacity: rand(0..20),
#     event_image: "PlaceholderImageURL",
#     published: true,
#     event_type_id: 1
#   )
# tea_tasting.save!

# p 'tea_tasting seeded'

p "Seeding all"

        #     rand(0..20).times do
        #         Reservation.create(
        #             phone_number: Faker::PhoneNumber.phone_number,
        #         )
        #     end
        # event.save!
