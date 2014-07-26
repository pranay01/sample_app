   class HomeController < ApplicationController

    def index
        @instagram = Instagram.user_recent_media("459355170", {:count => 2})
    end

    end

