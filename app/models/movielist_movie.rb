class MovielistMovie < ActiveRecord::Base
  validates :movielist_id, :movie_id, presence: true

  belongs_to :movie
  belongs_to :movielist
end
