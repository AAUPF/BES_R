require "application_system_test_case"

class StatePublicSector1sTest < ApplicationSystemTestCase
  setup do
    @state_public_sector1 = state_public_sector1s(:one)
  end

  test "visiting the index" do
    visit state_public_sector1s_url
    assert_selector "h1", text: "State Public Sector1s"
  end

  test "creating a State public sector1" do
    visit state_public_sector1s_url
    click_on "New State Public Sector1"

    fill_in "Equity", with: @state_public_sector1.Equity
    fill_in "Investment", with: @state_public_sector1.Investment
    fill_in "Loans", with: @state_public_sector1.Loans
    fill_in "Number Of Non Working Psus", with: @state_public_sector1.Number_of_Non_Working_PSUs
    fill_in "Number Of Working Psus", with: @state_public_sector1.Number_of_Working_PSUs
    fill_in "Public Sector Companies", with: @state_public_sector1.Public_Sector_Companies
    fill_in "Statutory Corporations", with: @state_public_sector1.Statutory_Corporations
    fill_in "Year As On 31st March", with: @state_public_sector1.Year_as_on_31st_March
    click_on "Create State public sector1"

    assert_text "State public sector1 was successfully created"
    click_on "Back"
  end

  test "updating a State public sector1" do
    visit state_public_sector1s_url
    click_on "Edit", match: :first

    fill_in "Equity", with: @state_public_sector1.Equity
    fill_in "Investment", with: @state_public_sector1.Investment
    fill_in "Loans", with: @state_public_sector1.Loans
    fill_in "Number Of Non Working Psus", with: @state_public_sector1.Number_of_Non_Working_PSUs
    fill_in "Number Of Working Psus", with: @state_public_sector1.Number_of_Working_PSUs
    fill_in "Public Sector Companies", with: @state_public_sector1.Public_Sector_Companies
    fill_in "Statutory Corporations", with: @state_public_sector1.Statutory_Corporations
    fill_in "Year As On 31st March", with: @state_public_sector1.Year_as_on_31st_March
    click_on "Update State public sector1"

    assert_text "State public sector1 was successfully updated"
    click_on "Back"
  end

  test "destroying a State public sector1" do
    visit state_public_sector1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "State public sector1 was successfully destroyed"
  end
end
