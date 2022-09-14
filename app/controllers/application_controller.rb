class ApplicationController < ActionController::API
    # skip_before_action :verify_authenticity_token

    before_action :authorized
    SECRET = "abcdkjaodfsijasdofiasdogiasdg"
  
    def encode_token(payload)
      JWT.encode(payload, SECRET)
    end
  
    def auth_header
      request.headers['Authorization']
    end
  
    def decoded_token
      if auth_header
        token = auth_header.split(' ')[1]
        begin
          JWT.decode(token, SECRET)
        rescue JWT::DecodeError
          nil
        end
      end
    end
  
    def current_user
      if decoded_token
        user_id = decoded_token[0]['user_id']
        @user = User.find_by(id: user_id)
      end
    end
  
    def logged_in?
      !!current_user
    end
  
    def authorized
      render json: {message: "Please log in"}, status: :unauthorized unless logged_in?
    end

  

end
