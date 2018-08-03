require "application_system_test_case"

class Irrigation1sTest < ApplicationSystemTestCase
  setup do
    @irrigation1 = irrigation1s(:one)
  end

  test "visiting the index" do
    visit irrigation1s_url
    assert_selector "h1", text: "Irrigation1s"
  end

  test "creating a Irrigation1" do
    visit irrigation1s_url
    click_on "New Irrigation1"

    fill_in "Created Potential", with: @irrigation1.Created_Potential
    fill_in "Typeofirrigationpotential", with: @irrigation1.TypeofIrrigationPotential
    fill_in "Ultimat Potential", with: @irrigation1.Ultimat_Potential
    fill_in "Utilised Potential", with: @irrigation1.Utilised_Potential
    click_on "Create Irrigation1"

    assert_text "Irrigation1 was successfully created"
    click_on "Back"
  end

  test "updating a Irrigation1" do
    visit irrigation1s_url
    click_on "Edit", match: :first

    fill_in "Created Potential", with: @irrigation1.Created_Potential
    fill_in "Typeofirrigationpotential", with: @irrigation1.TypeofIrrigationPotential
    fill_in "Ultimat Potential", with: @irrigation1.Ultimat_Potential
    fill_in "Utilised Potential", with: @irrigation1.Utilised_Potential
    click_on "Update Irrigation1"

    assert_text "Irrigation1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Irrigation1" do
    visit irrigation1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Irrigation1 was successfully destroyed"
  end
end
