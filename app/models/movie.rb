class Movie < ApplicationRecord
  has_many :bookmarks
  has_many :lists, through: :bookmarks

  # validates :rating, presence: true
  # validates :poster_url, presence: true
  validates :title, uniqueness: true, presence: true
  validates :overview, uniqueness: true, presence: true
end
