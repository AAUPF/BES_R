require "application_system_test_case"

class Irrigation6sTest < ApplicationSystemTestCase
  setup do
    @irrigation6 = irrigation6s(:one)
  end

  test "visiting the index" do
    visit irrigation6s_url
    assert_selector "h1", text: "Irrigation6s"
  end

  test "creating a Irrigation6" do
    visit irrigation6s_url
    click_on "New Irrigation6"

    fill_in "Other Sources Lift Irrigation And Barge Lift Irrigation", with: @irrigation6.Other_Sources_Lift_Irrigation_and_Barge_Lift_Irrigation
    fill_in "Surface Canal", with: @irrigation6.Surface_Canal
    fill_in "Tanks Including Ahars Pynes", with: @irrigation6.Tanks_including_Ahars_Pynes
    fill_in "Total", with: @irrigation6.Total
    fill_in "Tubewells Private And State", with: @irrigation6.Tubewells_Private_and_State
    fill_in "Year", with: @irrigation6.Year
    click_on "Create Irrigation6"

    assert_text "Irrigation6 was successfully created"
    click_on "Back"
  end

  test "updating a Irrigation6" do
    visit irrigation6s_url
    click_on "Edit", match: :first

    fill_in "Other Sources Lift Irrigation And Barge Lift Irrigation", with: @irrigation6.Other_Sources_Lift_Irrigation_and_Barge_Lift_Irrigation
    fill_in "Surface Canal", with: @irrigation6.Surface_Canal
    fill_in "Tanks Including Ahars Pynes", with: @irrigation6.Tanks_including_Ahars_Pynes
    fill_in "Total", with: @irrigation6.Total
    fill_in "Tubewells Private And State", with: @irrigation6.Tubewells_Private_and_State
    fill_in "Year", with: @irrigation6.Year
    click_on "Update Irrigation6"

    assert_text "Irrigation6 was successfully updated"
    click_on "Back"
  end

  test "destroying a Irrigation6" do
    visit irrigation6s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Irrigation6 was successfully destroyed"
  end
end
