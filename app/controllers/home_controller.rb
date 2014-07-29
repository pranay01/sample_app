class HomeController < ApplicationController

    def index
        @instagram = Instagram.user_recent_media("459355170", {:count => 1})
        @out =  `ls -la`
    end

    def instagram_results
    	@brand = params[:brandname]
  		@tags = Instagram.tag_recent_media(@brand)
    end
end


