module Features
  module SessionHelpers
    def sign_in_as(user)
      visit "/users/sign_in"
      within("#new_user") do
        fill_in "user_email", with: user.email
        fill_in "user_password", with: "testtest"
      end
      click_button "Log in"
      expect(page).to have_content "How can we help you?"
    end

    def logout
      click_on "Log out"
    end
  end
end
