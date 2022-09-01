class ApplicationController < ActionController::API
    include ActionController::Cookies
# rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity

#     def render_unprocessable_entity(invalid)
#         render json: {errors: invalid.record.errors}, status: :unprocessable_entity
#     end 
end
