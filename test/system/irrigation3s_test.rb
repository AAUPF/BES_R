require "application_system_test_case"

class Irrigation3sTest < ApplicationSystemTestCase
  setup do
    @irrigation3 = irrigation3s(:one)
  end

  test "visiting the index" do
    visit irrigation3s_url
    assert_selector "h1", text: "Irrigation3s"
  end

  test "creating a Irrigation3" do
    visit irrigation3s_url
    click_on "New Irrigation3"

    fill_in "Created Irrigation Potential", with: @irrigation3.Created_Irrigation_Potential
    fill_in "Hot Weather Irrigation", with: @irrigation3.Hot_Weather_Irrigation
    fill_in "Hot Weather Target", with: @irrigation3.Hot_Weather_Target
    fill_in "Kharif Irrigation", with: @irrigation3.Kharif_Irrigation
    fill_in "Kharif Target", with: @irrigation3.Kharif_Target
    fill_in "Rabi Irrigation", with: @irrigation3.Rabi_Irrigation
    fill_in "Rabi Target", with: @irrigation3.Rabi_Target
    fill_in "Total Utilised Irrigation Potential", with: @irrigation3.Total_Utilised_Irrigation_Potential
    fill_in "Utilisation Efficiency", with: @irrigation3.Utilisation_Efficiency
    fill_in "Year", with: @irrigation3.Year
    click_on "Create Irrigation3"

    assert_text "Irrigation3 was successfully created"
    click_on "Back"
  end

  test "updating a Irrigation3" do
    visit irrigation3s_url
    click_on "Edit", match: :first

    fill_in "Created Irrigation Potential", with: @irrigation3.Created_Irrigation_Potential
    fill_in "Hot Weather Irrigation", with: @irrigation3.Hot_Weather_Irrigation
    fill_in "Hot Weather Target", with: @irrigation3.Hot_Weather_Target
    fill_in "Kharif Irrigation", with: @irrigation3.Kharif_Irrigation
    fill_in "Kharif Target", with: @irrigation3.Kharif_Target
    fill_in "Rabi Irrigation", with: @irrigation3.Rabi_Irrigation
    fill_in "Rabi Target", with: @irrigation3.Rabi_Target
    fill_in "Total Utilised Irrigation Potential", with: @irrigation3.Total_Utilised_Irrigation_Potential
    fill_in "Utilisation Efficiency", with: @irrigation3.Utilisation_Efficiency
    fill_in "Year", with: @irrigation3.Year
    click_on "Update Irrigation3"

    assert_text "Irrigation3 was successfully updated"
    click_on "Back"
  end

  test "destroying a Irrigation3" do
    visit irrigation3s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Irrigation3 was successfully destroyed"
  end
end
