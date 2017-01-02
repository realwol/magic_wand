require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "GET #thumb_up_increase" do
    it "returns http success" do
      get :thumb_up_increase
      expect(response).to have_http_status(:success)
    end
  end

end
