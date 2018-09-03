require "application_system_test_case"

class StateDomesticProduct10sTest < ApplicationSystemTestCase
  setup do
    @state_domestic_product10 = state_domestic_product10s(:one)
  end

  test "visiting the index" do
    visit state_domestic_product10s_url
    assert_selector "h1", text: "State Domestic Product10s"
  end

  test "creating a State domestic product10" do
    visit state_domestic_product10s_url
    click_on "New State Domestic Product10"

    fill_in "Diesel", with: @state_domestic_product10.Diesel
    fill_in "Districts", with: @state_domestic_product10.Districts
    fill_in "Lpg", with: @state_domestic_product10.LPG
    fill_in "Percentage Share Of Diesel", with: @state_domestic_product10.Percentage_Share_of_Diesel
    fill_in "Percentage Share Of Lpg", with: @state_domestic_product10.Percentage_Share_of_LPG
    fill_in "Percentage Share Of Petrol", with: @state_domestic_product10.Percentage_Share_of_Petrol
    fill_in "Petrol", with: @state_domestic_product10.Petrol
    fill_in "Share Of Population", with: @state_domestic_product10.Share_of_Population
    fill_in "Year", with: @state_domestic_product10.Year
    click_on "Create State domestic product10"

    assert_text "State domestic product10 was successfully created"
    click_on "Back"
  end

  test "updating a State domestic product10" do
    visit state_domestic_product10s_url
    click_on "Edit", match: :first

    fill_in "Diesel", with: @state_domestic_product10.Diesel
    fill_in "Districts", with: @state_domestic_product10.Districts
    fill_in "Lpg", with: @state_domestic_product10.LPG
    fill_in "Percentage Share Of Diesel", with: @state_domestic_product10.Percentage_Share_of_Diesel
    fill_in "Percentage Share Of Lpg", with: @state_domestic_product10.Percentage_Share_of_LPG
    fill_in "Percentage Share Of Petrol", with: @state_domestic_product10.Percentage_Share_of_Petrol
    fill_in "Petrol", with: @state_domestic_product10.Petrol
    fill_in "Share Of Population", with: @state_domestic_product10.Share_of_Population
    fill_in "Year", with: @state_domestic_product10.Year
    click_on "Update State domestic product10"

    assert_text "State domestic product10 was successfully updated"
    click_on "Back"
  end

  test "destroying a State domestic product10" do
    visit state_domestic_product10s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "State domestic product10 was successfully destroyed"
  end
end
