class CheckIn < ApplicationRecord
  belongs_to :patient
  has_many :screenings
end
