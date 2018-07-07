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

    fill_in "Brinjal Area 2015", with: @production_productivity11.Brinjal_Area_2015
    fill_in "Brinjal Area 2016", with: @production_productivity11.Brinjal_Area_2016
    fill_in "Brinjal Production 2015", with: @production_productivity11.Brinjal_Production_2015
    fill_in "Brinjal Production 2016", with: @production_productivity11.Brinjal_Production_2016
    fill_in "Cauliflower Area 2015", with: @production_productivity11.Cauliflower_Area_2015
    fill_in "Cauliflower Area 2016", with: @production_productivity11.Cauliflower_Area_2016
    fill_in "Cauliflower Production 2015", with: @production_productivity11.Cauliflower_Production_2015
    fill_in "Cauliflower Production 2016", with: @production_productivity11.Cauliflower_Production_2016
    fill_in "Districts", with: @production_productivity11.Districts
    fill_in "Onion Area 2015", with: @production_productivity11.Onion_Area_2015
    fill_in "Onion Area 2016", with: @production_productivity11.Onion_Area_2016
    fill_in "Onion Production 2015", with: @production_productivity11.Onion_Production_2015
    fill_in "Onion Production 2016", with: @production_productivity11.Onion_Production_2016
    fill_in "Potato Area 2015", with: @production_productivity11.Potato_Area_2015
    fill_in "Potato Area 2016", with: @production_productivity11.Potato_Area_2016
    fill_in "Potato Production 2015", with: @production_productivity11.Potato_Production_2015
    fill_in "Potato Production 2016", with: @production_productivity11.Potato_Production_2016
    click_on "Create Production productivity11"

    assert_text "Production productivity11 was successfully created"
    click_on "Back"
  end

  test "updating a Production productivity11" do
    visit production_productivity11s_url
    click_on "Edit", match: :first

    fill_in "Brinjal Area 2015", with: @production_productivity11.Brinjal_Area_2015
    fill_in "Brinjal Area 2016", with: @production_productivity11.Brinjal_Area_2016
    fill_in "Brinjal Production 2015", with: @production_productivity11.Brinjal_Production_2015
    fill_in "Brinjal Production 2016", with: @production_productivity11.Brinjal_Production_2016
    fill_in "Cauliflower Area 2015", with: @production_productivity11.Cauliflower_Area_2015
    fill_in "Cauliflower Area 2016", with: @production_productivity11.Cauliflower_Area_2016
    fill_in "Cauliflower Production 2015", with: @production_productivity11.Cauliflower_Production_2015
    fill_in "Cauliflower Production 2016", with: @production_productivity11.Cauliflower_Production_2016
    fill_in "Districts", with: @production_productivity11.Districts
    fill_in "Onion Area 2015", with: @production_productivity11.Onion_Area_2015
    fill_in "Onion Area 2016", with: @production_productivity11.Onion_Area_2016
    fill_in "Onion Production 2015", with: @production_productivity11.Onion_Production_2015
    fill_in "Onion Production 2016", with: @production_productivity11.Onion_Production_2016
    fill_in "Potato Area 2015", with: @production_productivity11.Potato_Area_2015
    fill_in "Potato Area 2016", with: @production_productivity11.Potato_Area_2016
    fill_in "Potato Production 2015", with: @production_productivity11.Potato_Production_2015
    fill_in "Potato Production 2016", with: @production_productivity11.Potato_Production_2016
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
