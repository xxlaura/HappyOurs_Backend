class Api::V1::ReservationsController < ApplicationController

    def index
       @reservations = @event.reservations
    end

    def new
        @reservation = @event.reservation.new
    end

    def create
        @reservation = @event.reservation.new(reservation_params)
        @reservation.user = current_user
        @reservation.save!
    end

    def show
        @reservations = @event.reservations.find(params[:id])
    end


    private

    def reservation_params
        params.require(:reservation).permit(:phonenumber, :seat)
    end

end
