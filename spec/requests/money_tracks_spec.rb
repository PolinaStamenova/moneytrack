require 'rails_helper'

RSpec.describe "MoneyTracks", type: :request do
  describe "GET /new" do
    it "returns http success" do
      get "/money_tracks/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/money_tracks/create"
      expect(response).to have_http_status(:success)
    end
  end

end
