class ScreeningsController < ApplicationController
    def show

    end

    def new
        @screening = Screening.new
    end

    def create
        @check_in = CheckIn.find(params[:check_in_id])
        @screening = @check_in.screenings.create(check_in_id: params[:check_in_id])
        redirect_to "/check_ins/#{params[:check_in_id]}"
    end
end
