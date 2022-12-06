class Review < ApplicationRecord
    validates :title, presence: true
    validates :comment, length: {minimum: 10}

    belongs_to :user
    belongs_to :airline
end
