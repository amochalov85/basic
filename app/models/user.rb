class User < ApplicationRecord

    def self.recovery_password
    end

    has_many :posts, dependent: :destroy
end
  