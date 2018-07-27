require "application_system_test_case"

class AgriculturalCredit2sTest < ApplicationSystemTestCase
  setup do
    @agricultural_credit2 = agricultural_credit2s(:one)
  end

  test "visiting the index" do
    visit agricultural_credit2s_url
    assert_selector "h1", text: "Agricultural Credit2s"
  end

  test "creating a Agricultural credit2" do
    visit agricultural_credit2s_url
    click_on "New Agricultural Credit2"

    fill_in "Achievement", with: @agricultural_credit2.Achievement
    fill_in "Achievement Colour", with: @agricultural_credit2.Achievement_Colour
    fill_in "Districts", with: @agricultural_credit2.Districts
    fill_in "Target", with: @agricultural_credit2.Target
    fill_in "Target Colour", with: @agricultural_credit2.Target_Colour
    fill_in "Year", with: @agricultural_credit2.Year
    click_on "Create Agricultural credit2"

    assert_text "Agricultural credit2 was successfully created"
    click_on "Back"
  end

  test "updating a Agricultural credit2" do
    visit agricultural_credit2s_url
    click_on "Edit", match: :first

    fill_in "Achievement", with: @agricultural_credit2.Achievement
    fill_in "Achievement Colour", with: @agricultural_credit2.Achievement_Colour
    fill_in "Districts", with: @agricultural_credit2.Districts
    fill_in "Target", with: @agricultural_credit2.Target
    fill_in "Target Colour", with: @agricultural_credit2.Target_Colour
    fill_in "Year", with: @agricultural_credit2.Year
    click_on "Update Agricultural credit2"

    assert_text "Agricultural credit2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Agricultural credit2" do
    visit agricultural_credit2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Agricultural credit2 was successfully destroyed"
  end
end
