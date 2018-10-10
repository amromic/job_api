class PagesController < ApplicationController
before_action :authenticate_user!, except:[:home]


def home 
end

def about
    
    flash[:warning] = "You have been applied, Thank you"
    redirect_to root_path
end


end
