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

        post = Post.new(source:"Instagram" , username:"pranay01" , image_url:"www.google.com" , local_add: "pranay", brand:"Cola" , processed:0)
        post.save!
        #@tags is an array and not an instance variable
  		Resque.enqueue(ImageProcessor,tags)
  	end

end


