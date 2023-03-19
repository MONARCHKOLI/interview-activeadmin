class Question < ApplicationRecord
    belongs_to :screening
    has_many :answers

    def self.screening
        Question.all
    end
end
