class UsersController < ApplicationController
    def show 
        user = User.find(params[:id])
        render json: user, status: :ok
    end

    def create 
        user = User.create(user_params)
        if user.valid?
            session[:user_id] = user.id #remember who our user is
            render json: user, status: :ok 
        else
            render json: {errors: user.errors.full_messages}, status: :unprocessable_entity
        end
    end

    private

    def user_params
        params.permit(:username, :email, :password)
    end
end
