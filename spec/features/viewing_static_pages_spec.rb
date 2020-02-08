require "rails_helper"

RSpec.feature "Users can view static pages" do
  scenario "when visiting about page" do
    visit "/"
    expect(page).to have_content "Ruby on Rails Microblog"
  end

  scenario "when visiting help page" do
    visit "static_pages/help"
    expect(page).to have_content "Help"
  end

  scenario "when visiting about page" do
    visit "static_pages/about"
    expect(page).to have_content "About"
  end
end
