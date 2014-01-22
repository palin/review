class CommitReview < ActiveRecord::Base
  has_one :commit
  has_one :user
  has_one :state
  has_one :rating
end
