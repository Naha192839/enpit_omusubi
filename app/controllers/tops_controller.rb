class TopsController < ApplicationController
    def index
        @images = Image.all
        gon.insta_access_token = ENV['INSTA_ACCESS_TOKEN']
        gon.insta_business_id = ENV['INSTA_BUSINESSID']
    end

    def go_to_list
        images = params[:go_image_name].keys
        dir_url =  'https://www.google.co.jp/maps/dir/?api=1&dir_action=navigate&waypoints='
        images.each_with_index do |image, index|
            if index == images.size - 1 then
                dir_url = dir_url + '&destination=' + image
            else
                dir_url = dir_url + image + '|'
            end
        end
        redirect_to(dir_url)
    end
end
