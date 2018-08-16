require "application_system_test_case"

class NewricesTest < ApplicationSystemTestCase
  setup do
    @newrice = newrices(:one)
  end

  test "visiting the index" do
    visit newrices_url
    assert_selector "h1", text: "Newrices"
  end

  test "creating a Newrice" do
    visit newrices_url
    click_on "New Newrice"

    fill_in "Area", with: @newrice.Area
    fill_in "Districts", with: @newrice.Districts
    fill_in "Percentage Area", with: @newrice.Percentage_Area
    fill_in "Percentage Production", with: @newrice.Percentage_Production
    fill_in "Production", with: @newrice.Production
    fill_in "Productivity", with: @newrice.Productivity
    fill_in "Year", with: @newrice.Year
    click_on "Create Newrice"

    assert_text "Newrice was successfully created"
    click_on "Back"
  end

  test "updating a Newrice" do
    visit newrices_url
    click_on "Edit", match: :first

    fill_in "Area", with: @newrice.Area
    fill_in "Districts", with: @newrice.Districts
    fill_in "Percentage Area", with: @newrice.Percentage_Area
    fill_in "Percentage Production", with: @newrice.Percentage_Production
    fill_in "Production", with: @newrice.Production
    fill_in "Productivity", with: @newrice.Productivity
    fill_in "Year", with: @newrice.Year
    click_on "Update Newrice"

    assert_text "Newrice was successfully updated"
    click_on "Back"
  end

  test "destroying a Newrice" do
    visit newrices_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Newrice was successfully destroyed"
  end
end
