class Movie < ActiveRecord::Base
  validates :title, presence: true
  validates :title, uniqueness: true

  belongs_to :user, optional: true

  has_many :movielist_movies, dependent: :destroy
  has_many :reviews, dependent: :destroy
end
