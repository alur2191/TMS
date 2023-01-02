class DriversController < ApplicationController
    def new
       @driver = Driver.new
    end
    
    def create
        @driver = Driver.new(post_params)
        respond_to do |f|
            if (@driver.save)
                f.html { redirect_to "", notice: "Post created!" }
            else
                f.html { redirect_to "", notice: "Error: Post Not Saved." }
            end
        end
    end
    
    private
    def post_params
        params.require(:driver).permit(:name, :driver_type, :phone, :email, :address)
    end
end
