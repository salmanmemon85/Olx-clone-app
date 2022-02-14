class UsersController < ApplicationController
    def new
       @user = User.new
    end
    def create
       @user = User.new(user_params)
       if  
        @user.save
        redirect_to blog_grid_path, notice: "User Created successfully "
       else
        render action: "new"
        end
    end
    private
    def user_params
        params.require(:user).permit(:name ,:email, :phone, :password)
    end
end
