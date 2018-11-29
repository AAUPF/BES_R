require "application_system_test_case"

class SectoralShare4sTest < ApplicationSystemTestCase
  setup do
    @sectoral_share4 = sectoral_share4s(:one)
  end

  test "visiting the index" do
    visit sectoral_share4s_url
    assert_selector "h1", text: "Sectoral Share4s"
  end

  test "creating a Sectoral share4" do
    visit sectoral_share4s_url
    click_on "New Sectoral Share4"

    fill_in "Achievement", with: @sectoral_share4.Achievement
    fill_in "Achievement Percentage", with: @sectoral_share4.Achievement_Percentage
    fill_in "Indicator", with: @sectoral_share4.Indicator
    fill_in "Target", with: @sectoral_share4.Target
    fill_in "Year", with: @sectoral_share4.Year
    click_on "Create Sectoral share4"

    assert_text "Sectoral share4 was successfully created"
    click_on "Back"
  end

  test "updating a Sectoral share4" do
    visit sectoral_share4s_url
    click_on "Edit", match: :first

    fill_in "Achievement", with: @sectoral_share4.Achievement
    fill_in "Achievement Percentage", with: @sectoral_share4.Achievement_Percentage
    fill_in "Indicator", with: @sectoral_share4.Indicator
    fill_in "Target", with: @sectoral_share4.Target
    fill_in "Year", with: @sectoral_share4.Year
    click_on "Update Sectoral share4"

    assert_text "Sectoral share4 was successfully updated"
    click_on "Back"
  end

  test "destroying a Sectoral share4" do
    visit sectoral_share4s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sectoral share4 was successfully destroyed"
  end
end
