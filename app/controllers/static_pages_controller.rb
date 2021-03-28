class StaticPagesController < ApplicationController
  require 'flickr'

  def index
    flickr = Flickr.new
    if @user_id = params[:user_id]
      @photos = flickr.people.getPhotos :user_id => @user_id 
      @photos.map { |p| flickr.photos.getInfo :photo_id => p.id } 
    end
    rescue Flickr::FailedResponse
    flash.now[:alert] = 'Unable to find User ID!'
  end

end
