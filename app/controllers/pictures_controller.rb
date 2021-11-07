class PicturesController < ApplicationController

require 'flickr'



    def index
        @pictures = Picture.all
        @search = params["search"]
        if @search.present?
            @id = @search["user_id"]
            @flickr = Flickr.new(ENV["FLICKR_API_KEY"],ENV["FLICKR_SHARED_SECRET"])
            if @flickr != nil
                @returned_pictures = @flickr.people.getPublicPhotos(:user_id=>@id)
            end
        end

    end

    def show
    end

    

end
