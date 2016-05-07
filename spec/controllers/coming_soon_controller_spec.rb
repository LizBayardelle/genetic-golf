require 'rails_helper'

RSpec.describe ComingSoonController, type: :controller do

  describe "GET #putting_book" do
    it "returns http success" do
      get :putting_book
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #short_book" do
    it "returns http success" do
      get :short_book
      expect(response).to have_http_status(:success)
    end
  end

end
