class Pet < ApplicationRecord
    belongs_to :user
    has_many :favos, dependent: :destroy
    has_one_attached :image
end
