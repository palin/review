class Organization < ActiveRecord::Base
  has_many :repositories
  has_many :ownerships
end
