class FlatsController < ApplicationController
  def index
    @flats = Flat.all
  end

  def show
  end

  def new
  end
end
