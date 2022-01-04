class Api::V1::EventsController < ApplicationController
    before_action :find_event, only: %i[show]


    def index
        @events = Event.all
    end

    def create
        @event = Event.new(event_params)
        @event.user = current_user
        @event.save!
        render json: @event
    end

    def show

    end

    def update
        find_event
        @event.update(event_params)

    end

    def destroy
        find_event
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
