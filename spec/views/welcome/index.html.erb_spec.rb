require 'rails_helper'

describe 'welcome/index.html.erb' do
  context "when the page loads" do
    it "should display a welcome message" do
      render

      expect(rendered).to include("Welcome")
    end
  end
end
