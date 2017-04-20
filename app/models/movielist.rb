class Movielist < ActiveRecord::Base
  validates :title, :user_id, presence: true
  belongs_to :user, optional: true
  has_many :movielist_movies
  has_many :movies, through: :movielist_movies
end
