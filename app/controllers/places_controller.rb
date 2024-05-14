class PlacesController < ApplicationController
  def index
    @places_table = Place.all
  end

  def show
  end

  def new
  end

  def create
  end

end
