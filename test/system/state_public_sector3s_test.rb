require "application_system_test_case"

class StatePublicSector3sTest < ApplicationSystemTestCase
  setup do
    @state_public_sector3 = state_public_sector3s(:one)
  end

  test "visiting the index" do
    visit state_public_sector3s_url
    assert_selector "h1", text: "State Public Sector3s"
  end

  test "creating a State public sector3" do
    visit state_public_sector3s_url
    click_on "New State Public Sector3"

    fill_in "Number Of Nonworking Companies", with: @state_public_sector3.Number_of_NonWorking_Companies
    fill_in "Number Of Statutory Corporations", with: @state_public_sector3.Number_of_Statutory_Corporations
    fill_in "Number Of Working Companies", with: @state_public_sector3.Number_of_Working_Companies
    fill_in "Sector", with: @state_public_sector3.Sector
    click_on "Create State public sector3"

    assert_text "State public sector3 was successfully created"
    click_on "Back"
  end

  test "updating a State public sector3" do
    visit state_public_sector3s_url
    click_on "Edit", match: :first

    fill_in "Number Of Nonworking Companies", with: @state_public_sector3.Number_of_NonWorking_Companies
    fill_in "Number Of Statutory Corporations", with: @state_public_sector3.Number_of_Statutory_Corporations
    fill_in "Number Of Working Companies", with: @state_public_sector3.Number_of_Working_Companies
    fill_in "Sector", with: @state_public_sector3.Sector
    click_on "Update State public sector3"

    assert_text "State public sector3 was successfully updated"
    click_on "Back"
  end

  test "destroying a State public sector3" do
    visit state_public_sector3s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "State public sector3 was successfully destroyed"
  end
end
