class CastlesController < ApplicationController
  def index
    @castles = Castle.all
    @castle = Castle.new
  end

  def show
    @castle = Castle.find(params[:id])
  end

  def new
    @castle = Castle.new
  end

  def create
    @castle = Castle.new(castle_params)
    @castle.user_id = current_user.id
    if @castle.save
      redirect_to castle_path(castle.id), notice: "Château créé avec succès."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def castle_params
    params.require(:castle).permit(:name, :category, :address, :description, :price_per_day, :special_feature, photos: [])
  end
end
