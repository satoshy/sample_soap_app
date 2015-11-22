require 'rails_helper'

RSpec.describe "Converters", type: :request do
  describe "GET /converters" do
    it "works! (now write some real specs)" do
      get converters_path
      expect(response).to have_http_status(200)
    end
  end
end
