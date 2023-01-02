class PagesController < ApplicationController
  
  helper_method :sort_column, :sort_direction
  
  def index
      @loadboards = Loadboard.order(sort_column_comp + " " + sort_direction)
      @newLoadboard = Loadboard.new
      @newDriver = Driver.new
      @newTruck = Truck.new
      @newTrailer = Trailer.new

  end
  
  def index2
      @loadboards2 = Loadboard.order(sort_column_truck + " " + sort_direction)
    # @loadboards = Loadboard.all #
      @newLoadboard = Loadboard.new

  end

  def users
    if (User.find_by_username(params[:id]))
      @username = params[:id]
    else
      redirect_to root_path, :notice=> "User not found!"
    end
  end

  def drivers
  end

  def settings
  end

  def stats
  end

  def contacts
  end
 
  private 
  
  def sort_column_comp
    Loadboard.column_names.include?(params[:sort]) ? params[:sort] : "company"
  end
  
  def sort_column_truck
    Loadboard.column_names.include?(params[:sort]) ? params[:sort] : "truck"
  end
  
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
  
  
  
end
