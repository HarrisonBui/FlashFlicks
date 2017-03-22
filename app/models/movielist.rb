class Movielist < ActiveRecord::Base
  validates :title, :user_id, presence: true
  belongs_to :user
  has_many :movielistmovies
  has_many :movies, through: :movielistmovies
end
