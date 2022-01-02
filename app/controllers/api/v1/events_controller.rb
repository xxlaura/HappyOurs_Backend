class Api::V1::EventsController < ApplicationController
    before_action :find_event, only: %i[show]


    def index
      if params[:query].present?
        Event.search_by_name_and_drink
      else
        @movies = Event.all
      end
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
