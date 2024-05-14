class PlacesController < ApplicationController
  def index
    @places_table = Place.all
  end

  def show
  end

  def new
  end

  def create
    @new_row_places = Place.new
    @places_name = params["name"]
    @new_row_places["name"] = @places_name
    @new_row_places.save
    redirect_to "/places"
  end

end
