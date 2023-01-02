class LoadboardsController < ApplicationController
    def new
       @loadboard = Loadboard.new
    end
    
    def create
        @loadboard = Loadboard.new(post_params)
        respond_to do |f|
            if (@loadboard.save)
                f.html { redirect_to "", notice: "Post created!" }
            else
                f.html { redirect_to "", notice: "Error: Post Not Saved." }
            end
        end
    end
    
    private
    def post_params
        params.require(:loadboard).permit(:company, :dispatcher, :driver_id, :truck_id, :load_type, :trailer_id)
    end
end