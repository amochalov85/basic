class User < ApplicationRecord

    has_secure_password

    validates :email, presence: true, uniqueness: true

    def self.recovery_password
    end

    has_many :posts, dependent: :destroy
end
  