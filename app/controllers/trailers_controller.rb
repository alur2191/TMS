class TrailersController < ApplicationController
    def new
       @trailer = Trailer.new
    end
    
    def create
        @trailer = Trailer.new(post_params)
        respond_to do |f|
            if (@trailer.save)
                f.html { redirect_to "", notice: "Post created!" }
            else
                f.html { redirect_to "", notice: "Error: Post Not Saved." }
            end
        end
    end
    
    private
    def post_params
        params.require(:trailer).permit(:trailer_number, :trailer_type, :license_plate, :plate_expiry, :inspection_expiration)
    end
end