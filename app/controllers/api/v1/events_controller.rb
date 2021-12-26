class Api::V1::EventsController < ApplicationController
    before_action :find_event, only: %i[show]


    def index
        # @events = Event.all
    end

    def create
        @event = Event.new(permitted_params)
        @event.user = current_user
        @event.save!
        render json: @event
    end

    def show

    end

    
    private
    
    def find_event
      @event = Event.find(params[:id])
    end

    def permitted_params
        params.require(:event).permit(:name, :location, :event_date, :start_time, :end_time, :seat_capacity, :event_image)
    end

end
