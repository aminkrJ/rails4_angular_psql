require 'spec_helper'

feature "looking up panes", js: true do
  scenario "finding panes" do
    visit "/"
    fill_in "keywords", with: "pane"
    click_button "Search"

    expect(page).to have_content("pane 1")
    expect(page).to have_content("pane 2")
  end
end
