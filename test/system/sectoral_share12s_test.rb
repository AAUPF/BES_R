require "application_system_test_case"

class SectoralShare12sTest < ApplicationSystemTestCase
  setup do
    @sectoral_share12 = sectoral_share12s(:one)
  end

  test "visiting the index" do
    visit sectoral_share12s_url
    assert_selector "h1", text: "Sectoral Share12s"
  end

  test "creating a Sectoral share12" do
    visit sectoral_share12s_url
    click_on "New Sectoral Share12"

    fill_in "Achievement", with: @sectoral_share12.Achievement
    fill_in "Achievement Percentage", with: @sectoral_share12.Achievement_Percentage
    fill_in "Districts", with: @sectoral_share12.Districts
    fill_in "Indicator", with: @sectoral_share12.Indicator
    fill_in "Target", with: @sectoral_share12.Target
    click_on "Create Sectoral share12"

    assert_text "Sectoral share12 was successfully created"
    click_on "Back"
  end

  test "updating a Sectoral share12" do
    visit sectoral_share12s_url
    click_on "Edit", match: :first

    fill_in "Achievement", with: @sectoral_share12.Achievement
    fill_in "Achievement Percentage", with: @sectoral_share12.Achievement_Percentage
    fill_in "Districts", with: @sectoral_share12.Districts
    fill_in "Indicator", with: @sectoral_share12.Indicator
    fill_in "Target", with: @sectoral_share12.Target
    click_on "Update Sectoral share12"

    assert_text "Sectoral share12 was successfully updated"
    click_on "Back"
  end

  test "destroying a Sectoral share12" do
    visit sectoral_share12s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sectoral share12 was successfully destroyed"
  end
end
