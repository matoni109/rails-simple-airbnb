class FlatsController < ApplicationController
  def index
    @flats = Flat.all
  end

  def show
    @flats = Flat.find(params[:id])

  end
  def new
    @flat = Flat.new # needed to instantiate the form_for
  end

  def create
    @flat = Flat.new(flat_params)
    if @flat.save
      # no need for app/views/flats/create.html.erb
      redirect_to flat_path(@flat) # restaurants ( pural will take u to All )
    else
      render :new
    end
  end

  def destroy
    @flats = Flat.find(params[:id])
    @flats.destroy
    # no need for app/views/flats/destroy.html.erb
    redirect_to flats_path
  end

  def edit
    @flats = Flat.find(params[:id])
  end
  def update
    @flat = Flat.find(params[:id])
    if @flat.update(flat_params)
      # no need for app/views/flats/update.html.erb
      redirect_to flat_path(@flat)
    else
      render :edit
    end
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :address, :description)
  end

  def find_flat_params
    @restaurant = Restaurant.find(params[:id])
  end
end
