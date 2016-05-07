require 'rails_helper'

RSpec.describe FittingController, type: :controller do

  describe "GET #full" do
    it "returns http success" do
      get :full
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #wedge" do
    it "returns http success" do
      get :wedge
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #putter" do
    it "returns http success" do
      get :putter
      expect(response).to have_http_status(:success)
    end
  end

end
