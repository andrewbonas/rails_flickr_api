class PhotosController < ApplicationController
  require 'flickr'

  def index
    begin
      if params[:user_id]
        flickr = Flickr.new ENV['FLICKR_KEY'], ENV['FLICKR_SECRET']
        @photos = flickr.photos.search(user_id: params[:user_id])
      end
    rescue
      flash.now[:warning] = "Invalid User"
    end
  end
end
