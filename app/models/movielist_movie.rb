class MovielistMovie < ActiveRecord::Base
  validates :movielist, :movie, presence: true

  belongs_to :movie
  belongs_to :movielist
end
