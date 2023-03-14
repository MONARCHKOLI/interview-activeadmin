class Question < ApplicationRecord
    belongs_to :screening

    def self.screening
        Question.all
    end
end
