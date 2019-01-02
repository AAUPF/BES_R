require "application_system_test_case"

class MapbiharsTest < ApplicationSystemTestCase
  setup do
    @mapbihar = mapbihars(:one)
  end

  test "visiting the index" do
    visit mapbihars_url
    assert_selector "h1", text: "Mapbihars"
  end

  test "creating a Mapbihar" do
    visit mapbihars_url
    click_on "New Mapbihar"

    fill_in "Districts", with: @mapbihar.Districts
    fill_in "Indicator", with: @mapbihar.indicator
    click_on "Create Mapbihar"

    assert_text "Mapbihar was successfully created"
    click_on "Back"
  end

  test "updating a Mapbihar" do
    visit mapbihars_url
    click_on "Edit", match: :first

    fill_in "Districts", with: @mapbihar.Districts
    fill_in "Indicator", with: @mapbihar.indicator
    click_on "Update Mapbihar"

    assert_text "Mapbihar was successfully updated"
    click_on "Back"
  end

  test "destroying a Mapbihar" do
    visit mapbihars_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mapbihar was successfully destroyed"
  end
end
