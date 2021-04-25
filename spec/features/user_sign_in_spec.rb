require "rails_helper"

describe "the signin process" do
  before :each do
    @user = FactoryBot.create(:user)
  end

  it "signs me in" do
    visit "/users/sign_in"
    within("#new_user") do
      fill_in "user_email", with: @user.email
      fill_in "user_password", with: "testtest"
    end
    click_button "Log in"
    expect(page).to have_content "How can we help you?"
  end

  it "does not sign me in" do
    visit "/users/sign_in"
    within("#new_user") do
      fill_in "user_email", with: @user.email
      fill_in "user_password", with: "testtestaaa"
    end
    click_button "Log in"
    expect(page).to have_content "Account"
  end
end
