class CheckIn < ApplicationRecord

  belongs_to :patient
  belongs_to :user
  belongs_to :screening

  def self.symptoms
    {"Depression"=>0,"Anxiety"=>1,"Cough/Cold"=>2}
  end
end
