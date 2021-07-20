require 'rails_helper'

RSpec.describe "TourReviews", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/tour_reviews/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/tour_reviews/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/tour_reviews/create"
      expect(response).to have_http_status(:success)
    end
  end

end
