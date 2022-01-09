class Api::V1::EventsController < Api::V1::BaseController
  before_action :find_event, only: %i[show update destroy]

  def index
    @events = Event.all
  end

  def search
    if params[:query].present?
      @events = Event.search_by_event_and_drink(params[:query])
    else
      index
    end
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
    params.require(:event).permit(:name,:summary,:location, :begins_at, :duration, :capacity, :event_image)
  end
end
