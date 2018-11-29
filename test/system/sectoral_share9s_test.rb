require "application_system_test_case"

class SectoralShare9sTest < ApplicationSystemTestCase
  setup do
    @sectoral_share9 = sectoral_share9s(:one)
  end

  test "visiting the index" do
    visit sectoral_share9s_url
    assert_selector "h1", text: "Sectoral Share9s"
  end

  test "creating a Sectoral share9" do
    visit sectoral_share9s_url
    click_on "New Sectoral Share9"

    fill_in "Achievement", with: @sectoral_share9.Achievement
    fill_in "Achievement Percentage", with: @sectoral_share9.Achievement_Percentage
    fill_in "Indicator", with: @sectoral_share9.Indicator
    fill_in "Target", with: @sectoral_share9.Target
    fill_in "Year", with: @sectoral_share9.Year
    click_on "Create Sectoral share9"

    assert_text "Sectoral share9 was successfully created"
    click_on "Back"
  end

  test "updating a Sectoral share9" do
    visit sectoral_share9s_url
    click_on "Edit", match: :first

    fill_in "Achievement", with: @sectoral_share9.Achievement
    fill_in "Achievement Percentage", with: @sectoral_share9.Achievement_Percentage
    fill_in "Indicator", with: @sectoral_share9.Indicator
    fill_in "Target", with: @sectoral_share9.Target
    fill_in "Year", with: @sectoral_share9.Year
    click_on "Update Sectoral share9"

    assert_text "Sectoral share9 was successfully updated"
    click_on "Back"
  end

  test "destroying a Sectoral share9" do
    visit sectoral_share9s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sectoral share9 was successfully destroyed"
  end
end
