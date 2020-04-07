require 'rails_helper'

RSpec.describe CheckInsController, type: :controller do
  describe "routing" do
    it { should route(:get, "/check_ins/new").to(action: :new) }
    it { should route(:post, "/check_ins").to(action: :create) }
    it { should route(:get, "/check_ins/1").to(action: :show, id: 1) }
    it { should route(:put, "/check_ins/1").to(action: :update, id: 1) }
  end

  describe "GET #new" do
    it "renders the view" do
      get :new

      expect(response).to render_template(:new)
      expect(response).to render_with_layout(:application)
    end
  end

  describe "POST #create" do
    it "creates a new check_in" do
      expect { post(:create) }.to change(CheckIn, :count).by(1)
    end

    it "redirects to the check_in show page" do
      check_in = create(:check_in, id: 1)
      allow(CheckIn).to receive(:create).and_return(check_in)

      post :create

      expect(CheckIn).to have_received(:create)
      expect(response).to redirect_to check_in_path(1)
    end
  end

  describe "GET #show" do
    it "finds the check_in" do
      check_in = create(:check_in, id: 1)
      allow(CheckIn).to receive(:find).with("1").and_return(check_in)

      get :show, params: { id: 1 }

      expect(CheckIn).to have_received(:find).with("1")
    end

    it "shows the current check in" do
      check_in = create(:check_in, id: 1)
      allow(CheckIn).to receive(:create).and_return(check_in)

      get :show, params: { id: 1 }

      expect(response).to render_template(:show)
      expect(response).to render_with_layout(:application)
    end
  end

  describe "PUT #update" do
    it "finds the check_in" do
      check_in = create(:check_in, id: 1)
      allow(CheckIn).to receive(:find).with("1").and_return(check_in)

      put :update, params: { id: 1 }

      expect(CheckIn).to have_received(:find).with("1")
    end

    it "redirects to the new check_in page" do
      check_in = create(:check_in, id: 1)
      allow(CheckIn).to receive(:find).with("1").and_return(check_in)

      put :update, params: { id: 1 }

      expect(response).to redirect_to new_check_in_path
    end
  end
end
