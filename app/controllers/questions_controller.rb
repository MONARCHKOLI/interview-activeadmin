class QuestionsController < ApplicationController
    def show
        @questions = Question.find_by(question_type: params[:question_type])
    end

    def new
        @question = Question.new
    end

    def create
        @screening = Screening.find(params[:screening_id])
        @question = @screening.question.create(question_params)
    end

    private

    def question_params
        params.require(:question).permit(:question,:question_type,:screening_id,:check_in_id)
    end
end
