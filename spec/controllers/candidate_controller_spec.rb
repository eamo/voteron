require 'rails_helper'

RSpec.describe CandidateController, :type => :controller do

  describe "GET show_details" do
    it "returns http success" do
      get :show_details
      expect(response).to have_http_status(:success)
    end
  end

end
