class Reveiw < ApplicationRecord
  belongs_to :list
  validates :rating, presence: true
end
