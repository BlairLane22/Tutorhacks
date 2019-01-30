require 'rails_helper'

RSpec.describe HomeController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(200)
    end
  end

  describe "GET #pricing" do
    it "returns http success" do
      get :pricing
      expect(response).to have_http_status(200)
    end
  end

  describe "GET #about" do
    it "returns http success" do
      get :about
      expect(response).to have_http_status(200)
    end
  end

  describe "GET #terms_of_service" do
    it "returns http success" do
      get :terms_of_service
      expect(response).to have_http_status(200)
    end
  end



end
