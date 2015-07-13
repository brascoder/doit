require 'rails_helper'

RSpec.feature "Users", type: :feature do
  before(:each) do
    User.create(email: "ex@mp.le", password: "yeyeyeye")
    visit root_path
    
    click_on "Login"
    fill_in "Email", with: "ex@mp.le"
    fill_in "Password", with: "yeyeyeye"

    click_on "Log in"
  end

  describe "sign in" do
    it { expect(page).to have_css "h1", text: "To Do" }
  end
  
  describe "create a new task" do
    it "should see success message" do
      click_on "New Task"
      fill_in "Content", with: "Pay bills"
      click_on "Create Task"

      expect(page).to have_css "#notice", text: "Task was successfully created."
    end
  end
end
