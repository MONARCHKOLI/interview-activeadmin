class Screening < ApplicationRecord
    # serialize :answers, Hash
    has_many :check_ins
    has_many :questions
    has_many :answers

    validates :screening_type, uniqueness: true, presence: true
    
    SCORE = { "Not at all" => 0, "Several days" => 1,
        "More than the half days" => 2, "Nearly every day" => 3 }

    def severity
        case total_score
        when 0..4
          "Minimal depression"
        when 5..9
          "Mild depression"
        when 10..14
          "Moderate depression"
        when 15..19
          "Moderately severe depression"
        when 20..27
          "Severe depression"
        end
    end

    def total_score
        score = 0
        response.each do |key,value|
            score = score + Screening::SCORE[value]
        end
        score
    end
end
