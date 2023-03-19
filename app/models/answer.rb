class Answer < ApplicationRecord
    belongs_to :screening
    belongs_to :question
end
