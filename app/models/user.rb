class User < ApplicationRecord
    has_many :news

    has_secure_password
    validates :username, presence: true, uniqueness: true, length:{ minimum: 3 }

    validates :password, presence: true, if: :new_record?, length: { minimum: 3 }


    def authenticate(password)
        bcrypt_password  = BCrypt::Password.new(self.password_digest)
        bcrypt_password == password
    end

end
