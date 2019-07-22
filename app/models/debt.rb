class Debt < ActiveRecord::Base
  validates :name, presence: true
  validates :start_bal, presence: true
  validates :remain_bal, presence: true
  validates :payment, presence: true
  validates :snowball, presence: true

  belongs_to :user

  def slug
    name.downcase.gsub(" ","-")
  end

  def self.find_by_slug(slug)
    Debt.all.find { |debt| debt.slug == slug }
  end
end
