class Owner < ApplicationRecord
    has_many :walks
    
   


    validates :email, uniqueness: true

    has_secure_password
end
