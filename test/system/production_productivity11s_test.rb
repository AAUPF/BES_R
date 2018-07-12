require "application_system_test_case"

class ProductionProductivity11sTest < ApplicationSystemTestCase
  setup do
    @production_productivity11 = production_productivity11s(:one)
  end

  test "visiting the index" do
    visit production_productivity11s_url
    assert_selector "h1", text: "Production Productivity11s"
  end

  test "creating a Production productivity11" do
    visit production_productivity11s_url
    click_on "New Production Productivity11"

    fill_in "Brinjal Area", with: @production_productivity11.Brinjal_Area
    fill_in "Brinjal Production", with: @production_productivity11.Brinjal_Production
    fill_in "Cauliflower Area", with: @production_productivity11.Cauliflower_Area
    fill_in "Cauliflower Production", with: @production_productivity11.Cauliflower_Production
    fill_in "Districts", with: @production_productivity11.Districts
    fill_in "Onion Area", with: @production_productivity11.Onion_Area
    fill_in "Onion Production", with: @production_productivity11.Onion_Production
    fill_in "Potato Area", with: @production_productivity11.Potato_Area
    fill_in "Potato Production", with: @production_productivity11.Potato_Production
    fill_in "Year", with: @production_productivity11.Year
    click_on "Create Production productivity11"

    assert_text "Production productivity11 was successfully created"
    click_on "Back"
  end

  test "updating a Production productivity11" do
    visit production_productivity11s_url
    click_on "Edit", match: :first

    fill_in "Brinjal Area", with: @production_productivity11.Brinjal_Area
    fill_in "Brinjal Production", with: @production_productivity11.Brinjal_Production
    fill_in "Cauliflower Area", with: @production_productivity11.Cauliflower_Area
    fill_in "Cauliflower Production", with: @production_productivity11.Cauliflower_Production
    fill_in "Districts", with: @production_productivity11.Districts
    fill_in "Onion Area", with: @production_productivity11.Onion_Area
    fill_in "Onion Production", with: @production_productivity11.Onion_Production
    fill_in "Potato Area", with: @production_productivity11.Potato_Area
    fill_in "Potato Production", with: @production_productivity11.Potato_Production
    fill_in "Year", with: @production_productivity11.Year
    click_on "Update Production productivity11"

    assert_text "Production productivity11 was successfully updated"
    click_on "Back"
  end

  test "destroying a Production productivity11" do
    visit production_productivity11s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Production productivity11 was successfully destroyed"
  end
end
