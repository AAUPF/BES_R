require "application_system_test_case"

class AgriculturalInputs1Part2sTest < ApplicationSystemTestCase
  setup do
    @agricultural_inputs1_part2 = agricultural_inputs1_part2s(:one)
  end

  test "visiting the index" do
    visit agricultural_inputs1_part2s_url
    assert_selector "h1", text: "Agricultural Inputs1 Part2s"
  end

  test "creating a Agricultural inputs1 part2" do
    visit agricultural_inputs1_part2s_url
    click_on "New Agricultural Inputs1 Part2"

    fill_in "Arhar", with: @agricultural_inputs1_part2.Arhar
    fill_in "Crops", with: @agricultural_inputs1_part2.Crops
    fill_in "Gram", with: @agricultural_inputs1_part2.Gram
    fill_in "Maize", with: @agricultural_inputs1_part2.Maize
    fill_in "Masoor", with: @agricultural_inputs1_part2.Masoor
    fill_in "Pea", with: @agricultural_inputs1_part2.Pea
    fill_in "Rapeseed Mustard", with: @agricultural_inputs1_part2.Rapeseed_Mustard
    fill_in "Type Crops", with: @agricultural_inputs1_part2.Type_Crops
    fill_in "Wheat", with: @agricultural_inputs1_part2.Wheat
    fill_in "Year", with: @agricultural_inputs1_part2.Year
    click_on "Create Agricultural inputs1 part2"

    assert_text "Agricultural inputs1 part2 was successfully created"
    click_on "Back"
  end

  test "updating a Agricultural inputs1 part2" do
    visit agricultural_inputs1_part2s_url
    click_on "Edit", match: :first

    fill_in "Arhar", with: @agricultural_inputs1_part2.Arhar
    fill_in "Crops", with: @agricultural_inputs1_part2.Crops
    fill_in "Gram", with: @agricultural_inputs1_part2.Gram
    fill_in "Maize", with: @agricultural_inputs1_part2.Maize
    fill_in "Masoor", with: @agricultural_inputs1_part2.Masoor
    fill_in "Pea", with: @agricultural_inputs1_part2.Pea
    fill_in "Rapeseed Mustard", with: @agricultural_inputs1_part2.Rapeseed_Mustard
    fill_in "Type Crops", with: @agricultural_inputs1_part2.Type_Crops
    fill_in "Wheat", with: @agricultural_inputs1_part2.Wheat
    fill_in "Year", with: @agricultural_inputs1_part2.Year
    click_on "Update Agricultural inputs1 part2"

    assert_text "Agricultural inputs1 part2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Agricultural inputs1 part2" do
    visit agricultural_inputs1_part2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Agricultural inputs1 part2 was successfully destroyed"
  end
end
