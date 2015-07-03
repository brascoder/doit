require 'rails_helper'

RSpec.feature "StaticPages", type: :feature do
  describe "User visits website" do
    it "should see the title page" do
      visit root_path
      expect(page).to have_css "h1", text: "Doit"
    end

    it "should see the about page when they click the about link" do
      visit root_path
      click_on "About"
      expect(page).to have_css "h1", text: "About"
    end
  end
end
