class StaticPagesController < ApplicationController
    require 'flickr'

    def index
        flickr = Flickr.new(ENV["flickr_key"], ENV["flickr_secret"])
        
        if(params[:user_id])
            @photos = flickr.photos.search(user_id: params[:user_id])
        else
            @photos = flickr.photos.getRecent
        end
    end
end
