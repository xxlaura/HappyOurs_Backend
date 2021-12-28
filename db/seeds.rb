# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Event.destroy_all
User.destroy_all
Signup.destroy_all

p "Destroyed all data"

user = User.create!(
    name: Faker::TvShows::TheExpanse.character
    10.times do 
        event = Event.create(
            name: Faker::TvShows::TheExpanse.ship,
            event_summary: Faker::TvShows::TheExpanse.quote,
            location: Faker::TvShows::TheExpanse.location,
            event_date: Faker::Date.between(from: '2021-01-01', to: '2022-12-31'),
            start_time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now,
            end_time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now,
            seat_capacity: rand(0..20),
            event_image: "PlaceholderImageURL"
        )
            rand(0..20).times do
                Signup.create(
                    phone_number: Faker::PhoneNumber.phone_number,
                )
            end
        event.save!
    end
)

