require 'rails_helper'

RSpec.describe ResourcesController, type: :controller do

  describe "GET #aids" do
    it "returns http success" do
      get :aids
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #PGA" do
    it "returns http success" do
      get :PGA
      expect(response).to have_http_status(:success)
    end
  end

end
