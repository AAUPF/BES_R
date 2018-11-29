require "application_system_test_case"

class SectoralShare2sTest < ApplicationSystemTestCase
  setup do
    @sectoral_share2 = sectoral_share2s(:one)
  end

  test "visiting the index" do
    visit sectoral_share2s_url
    assert_selector "h1", text: "Sectoral Share2s"
  end

  test "creating a Sectoral share2" do
    visit sectoral_share2s_url
    click_on "New Sectoral Share2"

    fill_in "Achievement", with: @sectoral_share2.Achievement
    fill_in "Achievement Percentage", with: @sectoral_share2.Achievement_Percentage
    fill_in "Target", with: @sectoral_share2.Target
    fill_in "Year", with: @sectoral_share2.Year
    click_on "Create Sectoral share2"

    assert_text "Sectoral share2 was successfully created"
    click_on "Back"
  end

  test "updating a Sectoral share2" do
    visit sectoral_share2s_url
    click_on "Edit", match: :first

    fill_in "Achievement", with: @sectoral_share2.Achievement
    fill_in "Achievement Percentage", with: @sectoral_share2.Achievement_Percentage
    fill_in "Target", with: @sectoral_share2.Target
    fill_in "Year", with: @sectoral_share2.Year
    click_on "Update Sectoral share2"

    assert_text "Sectoral share2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Sectoral share2" do
    visit sectoral_share2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sectoral share2 was successfully destroyed"
  end
end
