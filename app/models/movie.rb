class Movie < ApplicationRecord
  validates :title, :overview, presence: true
  has_many :bookmarks
end
