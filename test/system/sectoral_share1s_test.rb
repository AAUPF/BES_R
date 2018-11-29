require "application_system_test_case"

class SectoralShare1sTest < ApplicationSystemTestCase
  setup do
    @sectoral_share1 = sectoral_share1s(:one)
  end

  test "visiting the index" do
    visit sectoral_share1s_url
    assert_selector "h1", text: "Sectoral Share1s"
  end

  test "creating a Sectoral share1" do
    visit sectoral_share1s_url
    click_on "New Sectoral Share1"

    fill_in "Acp Target", with: @sectoral_share1.ACP_Target
    fill_in "Achievement", with: @sectoral_share1.Achievement
    fill_in "Achievement Percentage", with: @sectoral_share1.Achievement_Percentage
    fill_in "Percentage Of Share In Advances", with: @sectoral_share1.Percentage_of_Share_in_Advances
    fill_in "Sector", with: @sectoral_share1.Sector
    fill_in "Year", with: @sectoral_share1.Year
    click_on "Create Sectoral share1"

    assert_text "Sectoral share1 was successfully created"
    click_on "Back"
  end

  test "updating a Sectoral share1" do
    visit sectoral_share1s_url
    click_on "Edit", match: :first

    fill_in "Acp Target", with: @sectoral_share1.ACP_Target
    fill_in "Achievement", with: @sectoral_share1.Achievement
    fill_in "Achievement Percentage", with: @sectoral_share1.Achievement_Percentage
    fill_in "Percentage Of Share In Advances", with: @sectoral_share1.Percentage_of_Share_in_Advances
    fill_in "Sector", with: @sectoral_share1.Sector
    fill_in "Year", with: @sectoral_share1.Year
    click_on "Update Sectoral share1"

    assert_text "Sectoral share1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Sectoral share1" do
    visit sectoral_share1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sectoral share1 was successfully destroyed"
  end
end
