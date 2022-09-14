class User < ApplicationRecord
    # This line is required for bcrypt
    has_secure_password

     # Validating username for uniqueness, disregarding case_sensitivity
    validates :username, presence: true, uniqueness: { case_sensitive: false}
    validates :email, presence: true, uniqueness: true
end
