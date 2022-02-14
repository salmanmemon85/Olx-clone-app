class User < ApplicationRecord
    validates :name, :email, :phone, presence: true
    validates :email, uniqueness: { message: "beta email sahi se dal", case_sensitive: false } 
    has_secure_password
    has_many :posts
    has_many :messages, inverse_of: "sender"
    has_many :messages, inverse_of: "receiver"
end
