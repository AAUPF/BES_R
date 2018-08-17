require "application_system_test_case"

class StateDomesticProduct2sTest < ApplicationSystemTestCase
  setup do
    @state_domestic_product2 = state_domestic_product2s(:one)
  end

  test "visiting the index" do
    visit state_domestic_product2s_url
    assert_selector "h1", text: "State Domestic Product2s"
  end

  test "creating a State domestic product2" do
    visit state_domestic_product2s_url
    click_on "New State Domestic Product2"

    fill_in "Per Capita Income", with: @state_domestic_product2.Per_Capita_Income
    fill_in "State", with: @state_domestic_product2.State
    fill_in "Year", with: @state_domestic_product2.Year
    click_on "Create State domestic product2"

    assert_text "State domestic product2 was successfully created"
    click_on "Back"
  end

  test "updating a State domestic product2" do
    visit state_domestic_product2s_url
    click_on "Edit", match: :first

    fill_in "Per Capita Income", with: @state_domestic_product2.Per_Capita_Income
    fill_in "State", with: @state_domestic_product2.State
    fill_in "Year", with: @state_domestic_product2.Year
    click_on "Update State domestic product2"

    assert_text "State domestic product2 was successfully updated"
    click_on "Back"
  end

  test "destroying a State domestic product2" do
    visit state_domestic_product2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "State domestic product2 was successfully destroyed"
  end
end
