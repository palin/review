class Commit < ActiveRecord::Base
  belongs_to :repository
  has_many :commit_reviews
end
