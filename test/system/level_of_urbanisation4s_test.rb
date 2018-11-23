require "application_system_test_case"

class LevelOfUrbanisation4sTest < ApplicationSystemTestCase
  setup do
    @level_of_urbanisation4 = level_of_urbanisation4s(:one)
  end

  test "visiting the index" do
    visit level_of_urbanisation4s_url
    assert_selector "h1", text: "Level Of Urbanisation4s"
  end

  test "creating a Level of urbanisation4" do
    visit level_of_urbanisation4s_url
    click_on "New Level Of Urbanisation4"

    fill_in "City Size", with: @level_of_urbanisation4.City_Size
    fill_in "Households Connected To Covered Drainage", with: @level_of_urbanisation4.Households_connected_to_covered_drainage
    fill_in "Households With Access To Piped Sewer Connected To Latrines", with: @level_of_urbanisation4.Households_with_access_to_piped_sewer_connected_to_latrines
    fill_in "Households With Tap Water Within Premises", with: @level_of_urbanisation4.Households_with_tap_water_within_premises
    click_on "Create Level of urbanisation4"

    assert_text "Level of urbanisation4 was successfully created"
    click_on "Back"
  end

  test "updating a Level of urbanisation4" do
    visit level_of_urbanisation4s_url
    click_on "Edit", match: :first

    fill_in "City Size", with: @level_of_urbanisation4.City_Size
    fill_in "Households Connected To Covered Drainage", with: @level_of_urbanisation4.Households_connected_to_covered_drainage
    fill_in "Households With Access To Piped Sewer Connected To Latrines", with: @level_of_urbanisation4.Households_with_access_to_piped_sewer_connected_to_latrines
    fill_in "Households With Tap Water Within Premises", with: @level_of_urbanisation4.Households_with_tap_water_within_premises
    click_on "Update Level of urbanisation4"

    assert_text "Level of urbanisation4 was successfully updated"
    click_on "Back"
  end

  test "destroying a Level of urbanisation4" do
    visit level_of_urbanisation4s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Level of urbanisation4 was successfully destroyed"
  end
end
