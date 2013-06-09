require 'spec_helper'

feature "Creating an event" do
  before do
    visit '/'
    click_link "New event"
  end
  scenario "can create an event" do
    fill_in "Event",:with => "Example Event"
    fill_in "Details", :with => "A testing event for the date app-a-day."
    fill_in "Date", :with => Time.now
    click_button "Create Event"
    page.should have_content("Created new event.")
  end

  scenario "cannot create a blank date" do
    fill_in "Event", :with => ""
    fill_in "Details", :with => ""
    fill_in "Date", :with => ""
    click_button "Create Event"
    page.should have_content("Unable to create event.")
  end
end
