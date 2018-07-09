require "application_system_test_case"

class AgriculturalInputs6sTest < ApplicationSystemTestCase
  setup do
    @agricultural_inputs6 = agricultural_inputs6s(:one)
  end

  test "visiting the index" do
    visit agricultural_inputs6s_url
    assert_selector "h1", text: "Agricultural Inputs6s"
  end

  test "creating a Agricultural inputs6" do
    visit agricultural_inputs6s_url
    click_on "New Agricultural Inputs6"

    fill_in "Achievement Financial", with: @agricultural_inputs6.Achievement_Financial
    fill_in "Achievement Physical", with: @agricultural_inputs6.Achievement_Physical
    fill_in "Districts", with: @agricultural_inputs6.Districts
    fill_in "Target Financial", with: @agricultural_inputs6.Target_Financial
    fill_in "Target Physical", with: @agricultural_inputs6.Target_Physical
    click_on "Create Agricultural inputs6"

    assert_text "Agricultural inputs6 was successfully created"
    click_on "Back"
  end

  test "updating a Agricultural inputs6" do
    visit agricultural_inputs6s_url
    click_on "Edit", match: :first

    fill_in "Achievement Financial", with: @agricultural_inputs6.Achievement_Financial
    fill_in "Achievement Physical", with: @agricultural_inputs6.Achievement_Physical
    fill_in "Districts", with: @agricultural_inputs6.Districts
    fill_in "Target Financial", with: @agricultural_inputs6.Target_Financial
    fill_in "Target Physical", with: @agricultural_inputs6.Target_Physical
    click_on "Update Agricultural inputs6"

    assert_text "Agricultural inputs6 was successfully updated"
    click_on "Back"
  end

  test "destroying a Agricultural inputs6" do
    visit agricultural_inputs6s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Agricultural inputs6 was successfully destroyed"
  end
end
