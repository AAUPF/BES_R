require "application_system_test_case"

class RainfallsTest < ApplicationSystemTestCase
  setup do
    @rainfall = rainfalls(:one)
  end

  test "visiting the index" do
    visit rainfalls_url
    assert_selector "h1", text: "Rainfalls"
  end

  test "creating a Rainfall" do
    visit rainfalls_url
    click_on "New Rainfall"

    fill_in "Districts", with: @rainfall.Districts
    fill_in "Hotweatherrain 2016", with: @rainfall.HotWeatherRain_2016
    fill_in "Hotweatherrain 2017", with: @rainfall.HotWeatherRain_2017
    fill_in "Northwestmonsoonrain 2016", with: @rainfall.NorthWestMonsoonRain_2016
    fill_in "Southwestmonsoonrain 2016", with: @rainfall.SouthWestMonsoonRain_2016
    fill_in "Southwestmonsoonrain 2017", with: @rainfall.SouthWestMonsoonRain_2017
    fill_in "Totalrainfall 2016", with: @rainfall.TotalRainfall_2016
    fill_in "Total 2017", with: @rainfall.Total_2017
    fill_in "Winterrain 2016", with: @rainfall.WinterRain_2016
    fill_in "Winterrain 2017", with: @rainfall.WinterRain_2017
    click_on "Create Rainfall"

    assert_text "Rainfall was successfully created"
    click_on "Back"
  end

  test "updating a Rainfall" do
    visit rainfalls_url
    click_on "Edit", match: :first

    fill_in "Districts", with: @rainfall.Districts
    fill_in "Hotweatherrain 2016", with: @rainfall.HotWeatherRain_2016
    fill_in "Hotweatherrain 2017", with: @rainfall.HotWeatherRain_2017
    fill_in "Northwestmonsoonrain 2016", with: @rainfall.NorthWestMonsoonRain_2016
    fill_in "Southwestmonsoonrain 2016", with: @rainfall.SouthWestMonsoonRain_2016
    fill_in "Southwestmonsoonrain 2017", with: @rainfall.SouthWestMonsoonRain_2017
    fill_in "Totalrainfall 2016", with: @rainfall.TotalRainfall_2016
    fill_in "Total 2017", with: @rainfall.Total_2017
    fill_in "Winterrain 2016", with: @rainfall.WinterRain_2016
    fill_in "Winterrain 2017", with: @rainfall.WinterRain_2017
    click_on "Update Rainfall"

    assert_text "Rainfall was successfully updated"
    click_on "Back"
  end

  test "destroying a Rainfall" do
    visit rainfalls_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rainfall was successfully destroyed"
  end
end
