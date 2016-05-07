require 'rails_helper'

RSpec.describe FitnessController, type: :controller do

  describe "GET #plan" do
    it "returns http success" do
      get :plan
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #equipment" do
    it "returns http success" do
      get :equipment
      expect(response).to have_http_status(:success)
    end
  end

end
