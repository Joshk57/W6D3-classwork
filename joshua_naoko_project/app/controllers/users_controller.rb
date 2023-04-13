class UsersController < ApplicationController

    def index
        # debugger
        @users = User.all
        render json: @users
    end

    def create
        user = User.new(user_params)
        # replace the `user_attributes_here` with the actual attribute keys
        if user.save
            # debugger
            render json: user
        else
            # debugger
            render json: user.errors.full_messages, status: :unprocessable_entity
        end
      end

    def show
        @user = User.find(params[:id])
        render json: @user
    end

    def update
        @user = User.find(params[:id])

        if @user.update(user_params)
            redirect_to user_url(@user)
        else
            render json: @user.errors.full_messages,
            status: :unprocessable_entity # status code 422
        end
    end

    def destroy
        # debugger
        @user = User.find(params[:id])
        @user.destroy
        render json: @user
    end

    private 

    def user_params
        params.require(:user).permit(:username)
    end
end
