class List < ApplicationRecord
  validates :name, presence: true
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  validates :name, uniqueness: true
  has_many :reviews
end
