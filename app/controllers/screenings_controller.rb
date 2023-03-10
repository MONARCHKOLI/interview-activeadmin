class ScreeningsController < ApplicationController
    # before_action :get_screening, only: [:create]
    def index
        @screening = Screening.find_by(check_in_id: params[:check_in_id])
    end

    def new
        @screening = Screening.new
    end

    def create
        @check_in = CheckIn.find(params[:check_in_id])
        @screening = @check_in.screenings.create(check_in_id: params[:check_in_id],response: params[:screening])
        # @screening.response = params[:screening]
        redirect_to check_in_screenings_path
    end

end
