class Review < ActiveRecord::Base
  validates :body, :user, :movie, presence: true
  validates :user, uniqueness: { scope: :movie }

  belongs_to :user
  belongs_to :movie
end
