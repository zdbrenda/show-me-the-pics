class PicturesController < ApplicationController



    def index
        @pictures = Picture.all
        @search = params["search"]
        if @searcg.present?
            @id = @search["user_id"]
        end

    end

    def show
    end

    

end
