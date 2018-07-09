require "rails_helper"

describe ApplicationController do
  describe "#current_patient" do
    controller do
      def index
        head :ok
      end
    end

    it "returns a patient" do
      patient = create(:patient)
      get :index
      expect(controller.current_patient).to eql(patient)
    end
  end
end
