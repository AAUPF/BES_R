require "application_system_test_case"

class SectoralShare11sTest < ApplicationSystemTestCase
  setup do
    @sectoral_share11 = sectoral_share11s(:one)
  end

  test "visiting the index" do
    visit sectoral_share11s_url
    assert_selector "h1", text: "Sectoral Share11s"
  end

  test "creating a Sectoral share11" do
    visit sectoral_share11s_url
    click_on "New Sectoral Share11"

    fill_in "Achievement", with: @sectoral_share11.Achievement
    fill_in "Achievement Percentage", with: @sectoral_share11.Achievement_Percentage
    fill_in "Districts", with: @sectoral_share11.Districts
    fill_in "Indicator", with: @sectoral_share11.Indicator
    fill_in "Target", with: @sectoral_share11.Target
    click_on "Create Sectoral share11"

    assert_text "Sectoral share11 was successfully created"
    click_on "Back"
  end

  test "updating a Sectoral share11" do
    visit sectoral_share11s_url
    click_on "Edit", match: :first

    fill_in "Achievement", with: @sectoral_share11.Achievement
    fill_in "Achievement Percentage", with: @sectoral_share11.Achievement_Percentage
    fill_in "Districts", with: @sectoral_share11.Districts
    fill_in "Indicator", with: @sectoral_share11.Indicator
    fill_in "Target", with: @sectoral_share11.Target
    click_on "Update Sectoral share11"

    assert_text "Sectoral share11 was successfully updated"
    click_on "Back"
  end

  test "destroying a Sectoral share11" do
    visit sectoral_share11s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sectoral share11 was successfully destroyed"
  end
end
