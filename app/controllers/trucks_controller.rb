class TrucksController < ApplicationController
    def new
       @truck = Truck.new
    end
    
    def create
        @truck = Truck.new(post_params)
        respond_to do |f|
            if (@truck.save)
                f.html { redirect_to "", notice: "Post created!" }
            else
                f.html { redirect_to "", notice: "Error: Post Not Saved." }
            end
        end
    end
    
    private
    def post_params
        params.require(:truck).permit(:truck_number, :truck_type, :license_plate, :plate_expiry, :inspection_expiration)
    end
end

