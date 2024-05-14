class EntriesController < ApplicationController

  def index
  end

  def show
  end

  def new
    @entries_place_id = params["place_id"]
    @places_table = Place.all
    @places_row = @places_table.find_by({"id" => @entries_place_id})
    @place_name = @places_row["name"]
  end

  def create
  end
end

