require 'rails_helper'

describe WelcomeController, type: :controller do
  describe "GET #index" do
    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end
  end

  describe "Users can see a homepage" do
    it "renders a homepage" do
      get :index

      expect(response).to render_template(:index)
    end
  end
end
