require "application_system_test_case"

class SectoralShare3sTest < ApplicationSystemTestCase
  setup do
    @sectoral_share3 = sectoral_share3s(:one)
  end

  test "visiting the index" do
    visit sectoral_share3s_url
    assert_selector "h1", text: "Sectoral Share3s"
  end

  test "creating a Sectoral share3" do
    visit sectoral_share3s_url
    click_on "New Sectoral Share3"

    fill_in "Achievement", with: @sectoral_share3.Achievement
    fill_in "Achievement Percentage", with: @sectoral_share3.Achievement_Percentage
    fill_in "Agencies", with: @sectoral_share3.Agencies
    fill_in "Target", with: @sectoral_share3.Target
    fill_in "Year", with: @sectoral_share3.Year
    click_on "Create Sectoral share3"

    assert_text "Sectoral share3 was successfully created"
    click_on "Back"
  end

  test "updating a Sectoral share3" do
    visit sectoral_share3s_url
    click_on "Edit", match: :first

    fill_in "Achievement", with: @sectoral_share3.Achievement
    fill_in "Achievement Percentage", with: @sectoral_share3.Achievement_Percentage
    fill_in "Agencies", with: @sectoral_share3.Agencies
    fill_in "Target", with: @sectoral_share3.Target
    fill_in "Year", with: @sectoral_share3.Year
    click_on "Update Sectoral share3"

    assert_text "Sectoral share3 was successfully updated"
    click_on "Back"
  end

  test "destroying a Sectoral share3" do
    visit sectoral_share3s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sectoral share3 was successfully destroyed"
  end
end
