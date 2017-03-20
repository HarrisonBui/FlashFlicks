class Movielist < ActiveRecord::Base
  validates :title, :user, presenc: true

  belongs_to :user

end
