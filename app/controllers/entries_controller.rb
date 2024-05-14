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
    @new_row_entries = Entry.new
    @new_row_entries["title"] = params["title"]
    @new_row_entries["description"] = params["description"]
    @new_row_entries["posted_on"] = params["posted_on"]
    @new_row_entries["place_id"] = params["place_id"]
    @new_row_entries.save

    redirect_to "/places"
  end
end

