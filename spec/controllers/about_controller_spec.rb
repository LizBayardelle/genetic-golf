require 'rails_helper'

RSpec.describe AboutController, type: :controller do

  describe "GET #benefits" do
    it "returns http success" do
      get :benefits
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #principles" do
    it "returns http success" do
      get :principles
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #staff" do
    it "returns http success" do
      get :staff
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #contact" do
    it "returns http success" do
      get :contact
      expect(response).to have_http_status(:success)
    end
  end

end
