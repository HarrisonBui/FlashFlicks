class Review < ActiveRecord::Base
  validates :body, :user_id, :rating, presence: true
  validates :user_id, uniqueness: { scope: :movie }

  belongs_to :user
  belongs_to :movie
end
