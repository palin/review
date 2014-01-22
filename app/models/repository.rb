class Repository < ActiveRecord::Base
  belongs_to :user
  belongs_to :organization
  has_many :contributions
end
