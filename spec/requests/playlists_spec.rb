require 'rails_helper'

RSpec.describe "Playlists", type: :request do
  describe "GET /new" do
    it "returns http success" do
      get "/playlists/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/playlists/create"
      expect(response).to have_http_status(:success)
    end
  end

end
