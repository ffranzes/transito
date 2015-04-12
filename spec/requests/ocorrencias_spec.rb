require 'rails_helper'

RSpec.describe "Ocorrencias", :type => :request do
  describe "GET /ocorrencias" do
    it "works! (now write some real specs)" do
      get ocorrencias_path
      expect(response).to have_http_status(200)
    end
  end
end
