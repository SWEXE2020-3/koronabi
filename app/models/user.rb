class User < ApplicationRecord
    
    validates :uname, presence: true, uniqueness: :true
    validates :password, presence: true, confirmation: true
    
    has_many :evals, dependent: :destroy
    has_many :stores, through: :evals
    
    attr_accessor :password, :password_confirmation
    
    def password=(val)
        if val.present?
            self.pass = BCrypt::Password.create(val)
        end
        @password = val
    end
    
    def self.authenticate(uname, pass)
        user = find_by(uname: uname)
        if user and BCrypt::Password.new(user.pass) == pass
            true
        else
            false
        end
    end
end
