class Screening < ApplicationRecord
    # serialize :answers, Hash
    belongs_to :check_in
    has_many :questions
    
    SCORE = { "Not at all" => 0, "Several days" => 1,
        "More than the half days" => 2, "Nearly every day" => 3 }

    def self.questions
      byebug
      Question.find_by(question_type: "depression").question
    end

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
