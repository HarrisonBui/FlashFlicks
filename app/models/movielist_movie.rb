class MovielistMovie < ActiveRecord::Base
  validates :movielist_id, :movie_id, presence: true
  validates :movie_id, uniqueness: { scope: :movielist_id }

  belongs_to :movie
  belongs_to :movielist
end
