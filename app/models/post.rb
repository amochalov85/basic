class Post < ApplicationRecord
    belongs_to :user
    #has_many :likes, dependent: :destroy
    #has_many :dislikes, dependent: :destroy
end
  