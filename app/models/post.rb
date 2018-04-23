class Post < ApplicationRecord
    mount_uploader :image, ImageUploader

    # def image= image
    #     self.image_filename = image.original_filenam
    # end

    belongs_to :user
    belongs_to :author, class_name: 'User', foreign_key: 'user_id'

    has_many :likes
    has_many :likers,-> { distinct }, through: :likes, source: :user

    has_many :relates, foreign_key: 'related_id'
    has_many :relaters, through: :relates
  
    has_many :reverse_relates, class_name: 'Relate', foreign_key: 'relater_id'
    has_many :relatees, through: :reverse_relates
end
