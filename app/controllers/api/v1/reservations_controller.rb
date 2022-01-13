class Api::V1::ReservationsController < Api::V1::BaseController

  def index
    @reservations = @event.reservations
  end

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
      params.require(:reservation).permit(:phonenumber, :seat)
  end

end
