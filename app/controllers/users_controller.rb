class UsersController < ApplicationController
   
    # def show 
    #     user = User.find(params[:id])
    #     render json: user, status: :ok
    # end

    # def create 
    #     user = User.create(user_params)
    #     if user.valid?
    #         # session[:user_id] = user.id #remember who our user is
    #         render json: user, status: :created 
    #     else
    #         render json: {error: "Could not create user!"}, status: :unprocessable_entity
    #     end
    # end

    # private

    # def user_params
    #     params.permit(:username, :password, :email)
    # end

    skip_before_action :authorized, only: [:create, :index]
    rescue_from ActiveRecord::RecordInvalid, with: :record_invalid
  
    def record_invalid invalid
      render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end

    def create
        user = User.create!(user_params)

        if user.valid? 
            render json: {user: UserSerializer.new(user), status: :created}
        else
            render json: {error: "Failed to create user", status: :not_created}
        end
    end

    def show
        render json: {user: UserSerializer.new(@user)}
    end

    def index
        render json: User.all
    end

    private

    def user_params
        params.require(:user).permit(:username, :email, :password)
    end
end
