require 'rails_helper'

RSpec.describe "Groups", type: :request do
  describe "GET /new" do
    before { get new_group_path }
    it "should have response status correct(ok)" do
      expect(response).to have_http_status(:ok)
    end

    it "renders 'new' template" do
      expect(response).to render_template('new')
    end
  end

  describe "GET /index" do
    before { get moneytrack_path }
    it "should have response status correct(ok)" do
      expect(response).to have_http_status(:ok)
    end

    it "renders 'index' template" do
      expect(response).to render_template('/')
    end
  end

  describe "GET /show" do
    before { get "/groups/show" }
    it "should have response status correct(ok)" do
      expect(response).to have_http_status(:ok)
    end

    it "renders 'show' template" do
      expect(response).to render_template('show')
    end
  end

end
