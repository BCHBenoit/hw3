class EntriesController < ApplicationController
  def index
  end
end

def show
end

def new
  @places_table = Place.all
  @places_row_id = places_table.find_by({"id" => params["place_id"]})
  @place_id = places_row_id["id"]
  @place_name = places_row_id["name"]
end

def create
end
