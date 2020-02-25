class DestinationsController < ApplicationController
  before_action :set_destination, only: [:show, :edit, :update, :destroy]

  def index
    @destinations = current_user.destinations
  end

  def show
  end

  def new
    @destination = Destination.new
  end

  def create
    @destination = current_user.destinations.new(destination_params)
    if @destination.save
      flash[:success] = "New Destination Created"
      redirect_to destinations_path
    else
      flash[:error] = "Error #{@destination.errors.full_messages.join('\n')}"
      render :new
    end
  end

  def update
    if @destination.update(destination_params)
      redirect_to destinations_path
    else
      render :edit
    end
  end

  def edit
  end

  def destroy
    @destination.destroy
    redirect_to destinations_path
  end


  private

  def set_destination
    @destination = current_user.destinations.find(params[:id])
  end

  def destination_params
    params.require(:destination).permit(:name, :location)
  end
  
end
