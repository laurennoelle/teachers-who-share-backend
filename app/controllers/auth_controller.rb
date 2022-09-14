class AuthController < ApplicationController
    skip_before_action :authorized, only: [:create]

    # Create in this context could also be called "log_in", but I am calling it "create"
    #  as it is creating a JWT token
    def create
        @user = User.find_by(username: user_login_params[:username])
        
        if @user && @user.authenticate(user_login_params[:password])
          @token = encode_token({user_id: @user.id})
          render json: {user: UserSerializer.new(@user), jwt: @token }, status: :accepted        
       elsif @user
          render json: {error: "Invalid password"}, status: :unauthorized
       else
          render json: { error: "Username does not exist"}, status: :unauthorized
      end
    end
    
    private

    def user_login_params
        params.require(:user).permit(:username, :password)
    end
end
