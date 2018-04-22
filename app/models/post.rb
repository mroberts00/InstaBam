class Post < ApplicationRecord
    belongs_to :user
    belongs_to :author, class_name: 'User', foreign_key: 'user_id'
    has_many :likes
    has_many :likers,-> { distinct }, through: :likes, source: :user
end
