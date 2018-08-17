require "application_system_test_case"

class StateDomesticProduct9sTest < ApplicationSystemTestCase
  setup do
    @state_domestic_product9 = state_domestic_product9s(:one)
  end

  test "visiting the index" do
    visit state_domestic_product9s_url
    assert_selector "h1", text: "State Domestic Product9s"
  end

  test "creating a State domestic product9" do
    visit state_domestic_product9s_url
    click_on "New State Domestic Product9"

    fill_in "Districts", with: @state_domestic_product9.Districts
    fill_in "Per Capita Gdp", with: @state_domestic_product9.Per_Capita_GDP
    fill_in "Year", with: @state_domestic_product9.Year
    click_on "Create State domestic product9"

    assert_text "State domestic product9 was successfully created"
    click_on "Back"
  end

  test "updating a State domestic product9" do
    visit state_domestic_product9s_url
    click_on "Edit", match: :first

    fill_in "Districts", with: @state_domestic_product9.Districts
    fill_in "Per Capita Gdp", with: @state_domestic_product9.Per_Capita_GDP
    fill_in "Year", with: @state_domestic_product9.Year
    click_on "Update State domestic product9"

    assert_text "State domestic product9 was successfully updated"
    click_on "Back"
  end

  test "destroying a State domestic product9" do
    visit state_domestic_product9s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "State domestic product9 was successfully destroyed"
  end
end
