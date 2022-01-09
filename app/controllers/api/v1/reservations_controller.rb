class Api::V1::ReservationsController < ApplicationController

  def index
      @reservations = @event.reservations
  end

  # def new
  #     @reservation = @event.reservation.new
  # end

  def create
    @reservation = Reservation.new(reservation_params)
    p @reservation
    @reservation.user = current_user
    @reservation.save!
  end

  def show
    @reservations = @event.reservations.find(params[:id])
  end


  private

  def reservation_params
    params.require(:reservation).permit(:phonenumber)
  end

end
