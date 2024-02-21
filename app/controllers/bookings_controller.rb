class BookingsController < ApplicationController
  def create
    @castle = Castle.find(params[:castle_id])
    @booking = Booking.new(booking_params)
    @booking.castle = @castle
    if @booking.save
      redirect_to castle_path(@castle)
    else
      render "castles/show", status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:opening_date, :ending_date)
  end
end
