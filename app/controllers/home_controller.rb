require 'open-uri'

class HomeController < ApplicationController

    def index
        @instagram = Instagram.user_recent_media("459355170", {:count => 1})
        @out =  `ls -la`
    end

    def instagram_results
    	@brand = params[:brandname]
  		@tags = Instagram.tag_recent_media(@brand)
  		@tags.map do |p|
	    	open('image.jpg', 'wb') do |file|
  				file << open(p.images.standard_resolution.url).read 
			end
		end

		`convert image.jpg image.pgm`
		`./tech_gen image.pgm`
    end

end


