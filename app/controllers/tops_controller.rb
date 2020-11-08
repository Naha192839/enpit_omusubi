class TopsController < ApplicationController
    def index
        @images = Image.all
        gon.insta_access_token = ENV['INSTA_ACCESS_TOKEN']
        gon.insta_business_id = ENV['INSTA_BUSINESSID']
    end

    def go_to_list
    end
end
