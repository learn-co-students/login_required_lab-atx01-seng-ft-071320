class SessionsController < ApplicationController

    def new
    end

    def create
        session[:name] = params[:name]
        if session[:name] && session[:name] != ""
            redirect_to home_path
        else
            redirect_to login_path
        end
    end

    def show
    end

    def destroy
        session[:name] = nil
        redirect_to '/'
    end
end