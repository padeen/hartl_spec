require "rails_helper"

RSpec.feature "Users can view static pages" do
  let(:base_title) { "Ruby on Rails Microblog - RSpec Edition" }

  scenario "when visiting about page" do
    visit "/"
    expect(page).to have_content "Ruby on Rails Microblog"
    expect(page).to have_title "Home | #{base_title}"
  end

  scenario "when visiting help page" do
    visit "static_pages/help"
    expect(page).to have_content "Help"
    expect(page).to have_title "Help | #{base_title}"
  end

  scenario "when visiting about page" do
    visit "static_pages/about"
    expect(page).to have_content "About"
    expect(page).to have_title "About | #{base_title}"
  end

  scenario "when visiting contact page" do
    visit "static_pages/contact"
    expect(page).to have_content "Contact"
    expect(page).to have_title "Contact | #{base_title}"
  end
end
