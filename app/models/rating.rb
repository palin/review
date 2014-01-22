class Rating < ActiveRecord::Base
  belongs_to :commit_review
  belongs_to :user
  belongs_to :state
  belongs_to :rating
end
