class CheckIn < ApplicationRecord
  belongs_to :user
  has_many :screenings

  def self.symptoms
    {"Depression"=>0,"Anxiety"=>1,"Cough/Cold"=>2}
  end
end
