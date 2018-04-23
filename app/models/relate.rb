class Relate < ApplicationRecord
    belongs_to :relater, class_name: 'Post', foreign_key: 'relater_id'
    belongs_to :relatee, class_name: 'Post', foreign_key: 'related_id'
end
