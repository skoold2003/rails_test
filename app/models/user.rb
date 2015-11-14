class User < ActiveRecord::Base
    has_secure_password

    validates :password, presence: true,                     
                    length: { maximum: 60 }
                    
    validates :email, presence: true,
                    uniqueness: true, 
                    length: { maximum: 60 }
                                        
    validates :login_type, presence: true,
                    length: { maximum: 40 }


    # def self.authenticate(email, password)
      # user = find_by_email(email)
      # if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
        # user
      # else
        # nil
      # end
    # end
#     
    # def encrypt_password
      # if password.present?
        # self.password_salt = BCrypt::Engine.generate_salt
        # self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
      # end
    # end

end
