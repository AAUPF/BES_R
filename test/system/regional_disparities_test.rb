require "application_system_test_case"

class RegionalDisparitiesTest < ApplicationSystemTestCase
  setup do
    @regional_disparity = regional_disparities(:one)
  end

  test "visiting the index" do
    visit regional_disparities_url
    assert_selector "h1", text: "Regional Disparities"
  end

  test "creating a Regional disparity" do
    visit regional_disparities_url
    click_on "New Regional Disparity"

    fill_in "Bottom 3 District", with: @regional_disparity.Bottom_3_District
    fill_in "Criteria", with: @regional_disparity.Criteria
    fill_in "Top 3 District", with: @regional_disparity.Top_3_District
    click_on "Create Regional disparity"

    assert_text "Regional disparity was successfully created"
    click_on "Back"
  end

  test "updating a Regional disparity" do
    visit regional_disparities_url
    click_on "Edit", match: :first

    fill_in "Bottom 3 District", with: @regional_disparity.Bottom_3_District
    fill_in "Criteria", with: @regional_disparity.Criteria
    fill_in "Top 3 District", with: @regional_disparity.Top_3_District
    click_on "Update Regional disparity"

    assert_text "Regional disparity was successfully updated"
    click_on "Back"
  end

  test "destroying a Regional disparity" do
    visit regional_disparities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Regional disparity was successfully destroyed"
  end
end
