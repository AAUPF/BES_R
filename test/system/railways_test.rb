require "application_system_test_case"

class RailwaysTest < ApplicationSystemTestCase
  setup do
    @railway = railways(:one)
  end

  test "visiting the index" do
    visit railways_url
    assert_selector "h1", text: "Railways"
  end

  test "creating a Railway" do
    visit railways_url
    click_on "New Railway"

    fill_in "States", with: @railway.States
    fill_in "Total Rail Route", with: @railway.Total_Rail_Route
    fill_in "Total Rail Route Per 1000 Sq Km", with: @railway.Total_Rail_Route_Per_1000_sq_km
    fill_in "Total Rail Route Per Lakh Population", with: @railway.Total_Rail_Route_Per_lakh_Population
    fill_in "Total Rail Track", with: @railway.Total_Rail_Track
    fill_in "Total Rail Track Per 1000 Sq Km", with: @railway.Total_Rail_Track_Per_1000_sq_km
    fill_in "Total Rail Track Per Lakh Population", with: @railway.Total_Rail_Track_Per_lakh_Population
    click_on "Create Railway"

    assert_text "Railway was successfully created"
    click_on "Back"
  end

  test "updating a Railway" do
    visit railways_url
    click_on "Edit", match: :first

    fill_in "States", with: @railway.States
    fill_in "Total Rail Route", with: @railway.Total_Rail_Route
    fill_in "Total Rail Route Per 1000 Sq Km", with: @railway.Total_Rail_Route_Per_1000_sq_km
    fill_in "Total Rail Route Per Lakh Population", with: @railway.Total_Rail_Route_Per_lakh_Population
    fill_in "Total Rail Track", with: @railway.Total_Rail_Track
    fill_in "Total Rail Track Per 1000 Sq Km", with: @railway.Total_Rail_Track_Per_1000_sq_km
    fill_in "Total Rail Track Per Lakh Population", with: @railway.Total_Rail_Track_Per_lakh_Population
    click_on "Update Railway"

    assert_text "Railway was successfully updated"
    click_on "Back"
  end

  test "destroying a Railway" do
    visit railways_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Railway was successfully destroyed"
  end
end
