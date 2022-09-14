class User < ApplicationRecord
    # This line is required for bcrypt
    has_secure_password


    validates :username, presence: true, uniqueness: { case_sensitive: false}
    # validates :email, presence: true, uniqueness: true
end
