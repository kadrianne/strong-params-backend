class User < ApplicationRecord
    has_secure_password validations: false

    validates :name, :username, :email, :password, presence: {message: "%{attribute} cannot be blank."}
    validates :username, :password, length: {in: 6..20, message: "%{attribute} must be between 6 and 20 characters long."}
    validates :username, uniqueness: {message: "%{attribute}s must be unique, and %{value} has already been taken."}

end
