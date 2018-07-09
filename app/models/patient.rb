class Patient < ApplicationRecord
  has_many :check_ins
end
