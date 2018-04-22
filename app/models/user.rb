class User < ApplicationRecord
  has_secure_password
  has_many :posts
  has_many :likes
  has_many :liked_posts, through: :likes, source: :post

  has_many :follows, foreign_key: 'followed_id'
  has_many :followers, through: :follows#, source: :followers

  has_many :reverse_follows, class_name: 'Follow', foreign_key: 'follower_id'
  has_many :followees, through: :reverse_follows#, source: :followees

end
