class SessionsController < ApplicationController

    def new
    end


    def create
        user = User.find_by(email: params[:email])
        if user && user.authenticate( params[:password])
             session[:user_id] = user.id
             redirect_to new_post_path
            else
          flash.now[:notice] = 'Please Wrong Email and Password'
                render :new       
            end
 
    end
    def destroy
        session[:user_id] = nil
        redirect_to new_session_url
      end
end
