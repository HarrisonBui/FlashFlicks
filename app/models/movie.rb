class Movie < ActiveRecord::Base
  validates :title, presence: true
  validates :title, uniqueness: true

  belongs_to :user

  has_many :movielist_movies
  has_many :reviews
end
