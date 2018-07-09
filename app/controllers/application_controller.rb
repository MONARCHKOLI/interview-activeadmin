class ApplicationController < ActionController::Base
  def current_patient
    Patient.first || Patient.create
  end
end
