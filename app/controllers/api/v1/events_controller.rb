class Api::V1::EventsController < ApplicationController
  before_action :find_event, only: %i[show update destroy]

  def index
    # if params[:query].present?
    #   @events = Event.search_by_event_and_drink("lucien")
    # else
    @events = Event.all
    # end
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    @event.save!
    @event.update(published: true)
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

  private

  def find_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:name, :location, :begins_at, :duration, :capacity, :event_image)
  end
end
