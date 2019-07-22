class User < ActiveRecord::Base
  validates :username, presence: true
  validates :email, presence: true
  has_secure_password
  has_many :debts

  def slug
    self.name.downcase.gsub(" ", "-")
  end

  def self.find_by_slug(slug)
   User.all.find do |user|
     user.slug == slug
   end
  end
  #
  # def self.find_by_username(username)
  #   self.all.select do |user|
  #     user.username == username
  #   end
  # end
end
