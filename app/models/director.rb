class Director < ApplicationRecord
    validates :username, uniqueness: true
    validates :username, presence: true

    has_many :actors
    has_secure_password
end
