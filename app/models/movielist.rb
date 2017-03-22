class Movielist < ActiveRecord::Base
  validates :title, :user_id, presence: true
  belongs_to :user
  has_many :movielist_movies
  has_many :movies, through: :movielist_movies
end
