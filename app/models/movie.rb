class Movie < ApplicationRecord
  validates :title, :overview, presence: true
end
