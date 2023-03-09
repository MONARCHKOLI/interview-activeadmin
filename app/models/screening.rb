class Screening < ApplicationRecord
    serialize :answers, Hash
    belongs_to :check_in

    def self.questions
        ["Little interest or pleasure in doing things", "Feeling down, depressed, or hopeless"]
    end
    
    SCORE = { "Not at all" => 0, "Several days" => 1,
        "More than the half days" => 2, "Nearly every day" => 3 }
end
