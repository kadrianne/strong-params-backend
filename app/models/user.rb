class User < ApplicationRecord
    validates :name, :username, :email, presence: true
    validates :username, length: {in: 4..20}
    has_secure_password

end
