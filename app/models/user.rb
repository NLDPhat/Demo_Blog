class User < ApplicationRecord
    has_many :blog
    validates :password, presence: true,
                length: { minimum: 10}
    validates :email, presence:true
end