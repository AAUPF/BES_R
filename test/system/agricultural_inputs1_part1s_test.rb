require "application_system_test_case"

class AgriculturalInputs1Part1sTest < ApplicationSystemTestCase
  setup do
    @agricultural_inputs1_part1 = agricultural_inputs1_part1s(:one)
  end

  test "visiting the index" do
    visit agricultural_inputs1_part1s_url
    assert_selector "h1", text: "Agricultural Inputs1 Part1s"
  end

  test "creating a Agricultural inputs1 part1" do
    visit agricultural_inputs1_part1s_url
    click_on "New Agricultural Inputs1 Part1"

    fill_in "Arhar", with: @agricultural_inputs1_part1.Arhar
    fill_in "Crops", with: @agricultural_inputs1_part1.Crops
    fill_in "Maize", with: @agricultural_inputs1_part1.Maize
    fill_in "Moong", with: @agricultural_inputs1_part1.Moong
    fill_in "Paddy", with: @agricultural_inputs1_part1.Paddy
    fill_in "Type Crops", with: @agricultural_inputs1_part1.Type_Crops
    fill_in "Urad", with: @agricultural_inputs1_part1.Urad
    fill_in "Year", with: @agricultural_inputs1_part1.Year
    click_on "Create Agricultural inputs1 part1"

    assert_text "Agricultural inputs1 part1 was successfully created"
    click_on "Back"
  end

  test "updating a Agricultural inputs1 part1" do
    visit agricultural_inputs1_part1s_url
    click_on "Edit", match: :first

    fill_in "Arhar", with: @agricultural_inputs1_part1.Arhar
    fill_in "Crops", with: @agricultural_inputs1_part1.Crops
    fill_in "Maize", with: @agricultural_inputs1_part1.Maize
    fill_in "Moong", with: @agricultural_inputs1_part1.Moong
    fill_in "Paddy", with: @agricultural_inputs1_part1.Paddy
    fill_in "Type Crops", with: @agricultural_inputs1_part1.Type_Crops
    fill_in "Urad", with: @agricultural_inputs1_part1.Urad
    fill_in "Year", with: @agricultural_inputs1_part1.Year
    click_on "Update Agricultural inputs1 part1"

    assert_text "Agricultural inputs1 part1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Agricultural inputs1 part1" do
    visit agricultural_inputs1_part1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Agricultural inputs1 part1 was successfully destroyed"
  end
end
