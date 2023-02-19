class Activity < ApplicationRecord
  has_one :activity_preference
  has_one :preference, through: :activity_preference
end
