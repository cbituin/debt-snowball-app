class Debt < ActiveRecord::Base
  validates
  belongs_to :user

  def slug
    name.downcase.gsub(" ","-")
  end

  def self.find_by_slug(slug)
    Debt.all.find { |debt| debt.slug == slug }
  end
end
