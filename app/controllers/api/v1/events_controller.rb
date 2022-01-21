require 'time'

class Api::V1::EventsController < Api::V1::BaseController
  before_action :find_event, only: %i[show update destroy new_images]

  def index
    @events = Event.all
    @upcoming_events = Event.where('begins_at > ?', DateTime.now).order(begins_at: :asc)
    # p "upcoming events", @upcoming_events
    @popular_events = Event
      .left_joins(:reservations)
      .group(:id)
      .order('SUM(reservations.seat) DESC')
    p "popular events", @popular_events
    # @events.each do |event|
    #   @event.reservations.count
  end

  def search
    if params[:query].present?
      @events = Event.search_by_event_and_drink(params[:query])
    else
      index
    end
  end

  def create
    p "========================="
    find_user = params[:userId]
    find_date = params[:date]
    find_start = params[:startTime]
    find_end = params[:endTime]
    find_begins_at = find_date + " " + find_start
    find_duration = find_end - find_start
    p find_duration
    begins_at = Time.parse(find_begins_at)
    p "========================="
    @event = Event.new(event_params)
    p "========================="
    @event.user = User.find(find_user)
    @event.event_type = EventType.find(1)
    @event.begins_at = begins_at
    @event.duration = find_duration
    p "========================="
    @event.save!
    # @event.update(published: true)
    render json: @event
  end

  def show
  end

  def update
    @event.update(event_params)
  end

  def destroy
    @event.destroy
  end

  def new_images
    puts params
    puts "======================================"
    images = params[:eventsPhoto]
    p images
    p @event
    @event.event_images.attach(images)
    render json: {status: 200, msg: "Photo attached"} if @event.save
    # puts "---------------ERROR-----------------"
  end

  private

  def find_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:name, :summary, :location, :latitude, :longitude, :begins_at, :duration, :capacity, :drink_type, event_images:[])
  end
end
