class StaticPagesController < ApplicationController
    def new
        redirect_to professional_user_path(current_professional_user) if professional_user_signed_in?
        redirect_to normal_user_path(current_normal_user) if normal_user_signed_in?
    end
end
