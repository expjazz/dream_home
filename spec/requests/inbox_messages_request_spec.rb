require 'rails_helper'

RSpec.describe "InboxMessages", type: :request do

  describe "GET /create" do
    it "returns http success" do
      get "/inbox_messages/create"
      expect(response).to have_http_status(:success)
    end
  end

end
