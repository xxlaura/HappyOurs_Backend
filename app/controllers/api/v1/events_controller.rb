class Api::V1::EventsController < ApplicationController
  before_action :find_event, only: %i[show update destroy]

  def index
    if params[:query].present?
      Event.search_by_event_and_drink
    else
      @events = Event.all
    end
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    @event.save!
    render json: @event
  end

  def show
    find_event
  end

  def update
    @event.update(event_params)
  end

  def destroy
    @event.destroy
  end

  private

  def find_event
    @event = Event.find(params[:id])
  end

  def event_params
      params.require(:event).permit(:name, :location, :event_date, :start_time, :duration, :seat_capacity, :event_image)
  end
end
