require 'rails_helper'

RSpec.describe GameController, type: :controller do

  describe "GET #instruction" do
    it "returns http success" do
      get :instruction
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #programs" do
    it "returns http success" do
      get :programs
      expect(response).to have_http_status(:success)
    end
  end

end
