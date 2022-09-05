require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET /email" do
    it "returns http success" do
      get "/users/email"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /crypted_password" do
    it "returns http success" do
      get "/users/crypted_password"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /salt" do
    it "returns http success" do
      get "/users/salt"
      expect(response).to have_http_status(:success)
    end
  end

end
