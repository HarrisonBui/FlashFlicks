class Movielist < ActiveRecord::Base
  validates :title, :user, presence: true

  belongs_to :user
  has_many :movies
end
