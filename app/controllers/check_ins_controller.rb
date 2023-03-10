class CheckInsController < ApplicationController
  def new
  end

  def create
    check_in = CheckIn.create(patient: current_patient)
    redirect_to check_in_path(check_in)
  end

  def show
    @check_in = CheckIn.find(params[:id])
  end

  def update
    CheckIn.find(params[:id])
    redirect_to new_check_in_path
  end
end
