class CastlesController < ApplicationController
  def index
    @castles = Castle.all
    @markers = @castles.geocoded.map do |castle|
      {
        lat: castle.latitude,
        lng: castle.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {castle: castle}),
        marker_html: render_to_string(partial: "marker", locals: { castle: castle })
      }
    end
  end

  def show
    @castle = Castle.find(params[:id])
    @booking = Booking.new
  end

  def new
    @castle = Castle.new
  end

  def create
    @castle = Castle.new(castle_params)
    @castle.user_id = current_user.id
    if @castle.save
      redirect_to castle_path(@castle), notice: "Château créé avec succès."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def castle_params
    params.require(:castle).permit(:name, :category, :address, :description, :price_per_day, :special_feature, :photo, pictures: [])
  end
end
