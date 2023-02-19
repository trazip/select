class Preference < ApplicationRecord
  has_many :activity_preferences
  has_many :activities, through: :activity_preferences

  def self.categories
    Preference.all.select(:category).distinct.map(&:category)
  end
end
