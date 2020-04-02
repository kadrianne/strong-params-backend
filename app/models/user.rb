class User < ApplicationRecord
    has_secure_password

    validates :name, :username, :email, presence: {message: "Please enter a %{attribute}."}
    validates :username, :password, length: {in: 6..20, message: "%{attribute} must be between 6 and 20 characters long."}
    validates :username, uniqueness: {message: "%{attribute}s must be unique, and %{value} has already been taken."}

end
