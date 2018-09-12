class UsersController < ApplicationController
    
    def login_form
    end
    
    def login
        @user = User.find_by(name: params[:name],password: params[:password])
        if @user
            session[:user_id] = @user.id
            redirect_to("/")
        else
            render("users/login_form")
        end
    end
    
    def logout
        session[:user_id] = nil
        redirect_to("/")
    end
end
