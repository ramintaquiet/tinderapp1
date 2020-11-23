class Prof2 < ApplicationRecord
  belongs_to :user
  has_many :profile, dependent: :destroy
end
