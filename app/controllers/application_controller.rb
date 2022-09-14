class ApplicationController < ActionController::API
    # include ActionController::Cookies
# rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity

#     def render_unprocessable_entity(invalid)
#         render json: {errors: invalid.record.errors}, status: :unprocessable_entity
#     end 
#  skip_before_action :verify_authenticity_token (for error)

# before_action :authorized
# SECRET = "asjfnasikfdmgidojgmdsfmsdo"

# def encode_token(payload)
#     JWT.encode(payload, SECRET)
# end

# def auth_header
#     request.headers['Authorization']
# end

# def decoded_token
#     if auth_header
#       token = auth_header.split(' ')[1]
#       begin
#         puts "hasdsad"
#         puts token
#         #  (,true, algorithm: 'HS256'), not sure if this is neccesary to the end
#         JWT.decode(token, SECRET)
#       rescue JWT::DecodeError
#         nil
#       end
#     end
# end

# def current_user
#     if decoded_token
#         user_id = decoded_token[0]['user_id']
#         @user = User.find_by(id: user_id)
#     end
# end

# def logged_in?
#     !!current_user
# end

# def authorized
#     render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
# end
  

end
