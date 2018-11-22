require "application_system_test_case"

class LevelOfUrbanisation6sTest < ApplicationSystemTestCase
  setup do
    @level_of_urbanisation6 = level_of_urbanisation6s(:one)
  end

  test "visiting the index" do
    visit level_of_urbanisation6s_url
    assert_selector "h1", text: "Level Of Urbanisation6s"
  end

  test "creating a Level of urbanisation6" do
    visit level_of_urbanisation6s_url
    click_on "New Level Of Urbanisation6"

    fill_in "Indicator", with: @level_of_urbanisation6.Indicator
    fill_in "Municipal Corporations", with: @level_of_urbanisation6.Municipal_Corporations
    fill_in "Municipal Councils", with: @level_of_urbanisation6.Municipal_Councils
    fill_in "Nagar Panchayats", with: @level_of_urbanisation6.Nagar_Panchayats
    fill_in "Total", with: @level_of_urbanisation6.Total
    fill_in "Year", with: @level_of_urbanisation6.Year
    click_on "Create Level of urbanisation6"

    assert_text "Level of urbanisation6 was successfully created"
    click_on "Back"
  end

  test "updating a Level of urbanisation6" do
    visit level_of_urbanisation6s_url
    click_on "Edit", match: :first

    fill_in "Indicator", with: @level_of_urbanisation6.Indicator
    fill_in "Municipal Corporations", with: @level_of_urbanisation6.Municipal_Corporations
    fill_in "Municipal Councils", with: @level_of_urbanisation6.Municipal_Councils
    fill_in "Nagar Panchayats", with: @level_of_urbanisation6.Nagar_Panchayats
    fill_in "Total", with: @level_of_urbanisation6.Total
    fill_in "Year", with: @level_of_urbanisation6.Year
    click_on "Update Level of urbanisation6"

    assert_text "Level of urbanisation6 was successfully updated"
    click_on "Back"
  end

  test "destroying a Level of urbanisation6" do
    visit level_of_urbanisation6s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Level of urbanisation6 was successfully destroyed"
  end
end
