class CheckIn < ApplicationRecord
<<<<<<< HEAD
  belongs_to :user
  has_many :screenings
=======
  belongs_to :patient
  belongs_to :user
  belongs_to :screening
>>>>>>> b64a0c356c3a8df684a4735dd2c902e5fc2f9c18

  def self.symptoms
    {"Depression"=>0,"Anxiety"=>1,"Cough/Cold"=>2}
  end
end
