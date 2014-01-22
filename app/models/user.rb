class User < ActiveRecord::Base

  has_many :contributions
  has_many :organizations
  has_many :commit_reviews
  has_many :own_repositories, class_name: "Repository"

  acts_as_authentic

  def self.find_or_create_from_auth_hash(auth)
    find_by_auth_hash(auth) || create_from_auth_hash(auth.uid, auth['info'])
  end

  def self.find_by_auth_hash(data)
    User.where(github_id: data.uid).first
  end

  def self.create_from_auth_hash(gh_id, data)
    User.create(login: data["nickname"], avatar_url: data["image"], name: data["name"], github_id: gh_id, email: data["email"])
  end
end
