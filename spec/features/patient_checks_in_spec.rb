require "rails_helper"

RSpec.feature "A patient checks into the app" do
  scenario "for a scheduled appointment" do
    visit root_path

    click_on "Start check in"

    expect(page).to have_content "Please complete all of the steps on this page"

    click_on "Complete check in"

    expect(page).to have_button "Start check in"
  end
end
