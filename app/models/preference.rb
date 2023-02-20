class Preference < ApplicationRecord
  has_many :activities

  def self.categories
    Preference.all.select(:category).distinct.map(&:category)
  end
end
