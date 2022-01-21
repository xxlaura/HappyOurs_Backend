class Api::V1::ReservationsController < Api::V1::BaseController


  def create
    p "========================="
    find_user = params[:userId]
    find_event = params[:event_id]
    p "========================="
    @reservation = Reservation.new(reservation_params)
    p "========================="
    @reservation.event = Event.find(find_event)
    @reservation.user = User.find(find_user)
    p "========================="
    @reservation.save!
    # @event.update(published: true)
  end

  # def show
  #   @reservations = @event.reservations.find(params[:id])
  # end


  private

  def reservation_params
    params.require(:reservation).permit(:phonenumber, :seat)
  end

end
