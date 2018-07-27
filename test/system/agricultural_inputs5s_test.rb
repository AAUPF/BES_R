require "application_system_test_case"

class AgriculturalInputs5sTest < ApplicationSystemTestCase
  setup do
    @agricultural_inputs5 = agricultural_inputs5s(:one)
  end

  test "visiting the index" do
    visit agricultural_inputs5s_url
    assert_selector "h1", text: "Agricultural Inputs5s"
  end

  test "creating a Agricultural inputs5" do
    visit agricultural_inputs5s_url
    click_on "New Agricultural Inputs5"

    fill_in "Achievement Financial", with: @agricultural_inputs5.Achievement_Financial
    fill_in "Achievement Financial Colour", with: @agricultural_inputs5.Achievement_Financial_Colour
    fill_in "Achievement Physical", with: @agricultural_inputs5.Achievement_Physical
    fill_in "Achievement Physical Colour", with: @agricultural_inputs5.Achievement_Physical_Colour
    fill_in "Districts", with: @agricultural_inputs5.Districts
    fill_in "Target Financial", with: @agricultural_inputs5.Target_Financial
    fill_in "Target Financial Colour", with: @agricultural_inputs5.Target_Financial_Colour
    fill_in "Target Physical", with: @agricultural_inputs5.Target_Physical
    fill_in "Target Physical Colour", with: @agricultural_inputs5.Target_Physical_Colour
    click_on "Create Agricultural inputs5"

    assert_text "Agricultural inputs5 was successfully created"
    click_on "Back"
  end

  test "updating a Agricultural inputs5" do
    visit agricultural_inputs5s_url
    click_on "Edit", match: :first

    fill_in "Achievement Financial", with: @agricultural_inputs5.Achievement_Financial
    fill_in "Achievement Financial Colour", with: @agricultural_inputs5.Achievement_Financial_Colour
    fill_in "Achievement Physical", with: @agricultural_inputs5.Achievement_Physical
    fill_in "Achievement Physical Colour", with: @agricultural_inputs5.Achievement_Physical_Colour
    fill_in "Districts", with: @agricultural_inputs5.Districts
    fill_in "Target Financial", with: @agricultural_inputs5.Target_Financial
    fill_in "Target Financial Colour", with: @agricultural_inputs5.Target_Financial_Colour
    fill_in "Target Physical", with: @agricultural_inputs5.Target_Physical
    fill_in "Target Physical Colour", with: @agricultural_inputs5.Target_Physical_Colour
    click_on "Update Agricultural inputs5"

    assert_text "Agricultural inputs5 was successfully updated"
    click_on "Back"
  end

  test "destroying a Agricultural inputs5" do
    visit agricultural_inputs5s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Agricultural inputs5 was successfully destroyed"
  end
end
