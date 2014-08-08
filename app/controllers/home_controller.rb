require 'open-uri'
class HomeController < ApplicationController

    def index
        @instagram = Instagram.user_recent_media("459355170", {:count => 1})
        @out =  `ls -la`
    end

    def instagram_results
    	@brand = params[:brandname]
        tags = Instagram.tag_recent_media(@brand)
        puts tags.class

        tags.map do |p|
        	puts p
        	puts "\n\n\n"
        end

        #@tags is an array and not an instance variable
  		Resque.enqueue(ImageProcessor,tags)
  	end

end


