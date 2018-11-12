require "application_system_test_case"

class BiharRenewableEnergiesTest < ApplicationSystemTestCase
  setup do
    @bihar_renewable_energy = bihar_renewable_energies(:one)
  end

  test "visiting the index" do
    visit bihar_renewable_energies_url
    assert_selector "h1", text: "Bihar Renewable Energies"
  end

  test "creating a Bihar renewable energy" do
    visit bihar_renewable_energies_url
    click_on "New Bihar Renewable Energy"

    fill_in "Financial Outlay", with: @bihar_renewable_energy.Financial_Outlay
    fill_in "Indicator", with: @bihar_renewable_energy.Indicator
    fill_in "Physical Achievement", with: @bihar_renewable_energy.Physical_Achievement
    fill_in "Schemes", with: @bihar_renewable_energy.Schemes
    fill_in "Year", with: @bihar_renewable_energy.Year
    click_on "Create Bihar renewable energy"

    assert_text "Bihar renewable energy was successfully created"
    click_on "Back"
  end

  test "updating a Bihar renewable energy" do
    visit bihar_renewable_energies_url
    click_on "Edit", match: :first

    fill_in "Financial Outlay", with: @bihar_renewable_energy.Financial_Outlay
    fill_in "Indicator", with: @bihar_renewable_energy.Indicator
    fill_in "Physical Achievement", with: @bihar_renewable_energy.Physical_Achievement
    fill_in "Schemes", with: @bihar_renewable_energy.Schemes
    fill_in "Year", with: @bihar_renewable_energy.Year
    click_on "Update Bihar renewable energy"

    assert_text "Bihar renewable energy was successfully updated"
    click_on "Back"
  end

  test "destroying a Bihar renewable energy" do
    visit bihar_renewable_energies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bihar renewable energy was successfully destroyed"
  end
end
