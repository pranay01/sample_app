require 'open-uri'
class HomeController < ApplicationController

    def index
        @instagram = Instagram.user_recent_media("459355170", {:count => 1})
        @posts = Post.where("image_url is NOT NULL and id > ?", params[:after_id])
    end

    def instagram_results
    	@brand = params[:brandname]
        tags = Instagram.tag_recent_media(@brand)
        puts tags.class

  		Resque.enqueue(ImageProcessor,tags)
  	end

end


