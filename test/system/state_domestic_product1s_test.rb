require "application_system_test_case"

class StateDomesticProduct1sTest < ApplicationSystemTestCase
  setup do
    @state_domestic_product1 = state_domestic_product1s(:one)
  end

  test "visiting the index" do
    visit state_domestic_product1s_url
    assert_selector "h1", text: "State Domestic Product1s"
  end

  test "creating a State domestic product1" do
    visit state_domestic_product1s_url
    click_on "New State Domestic Product1"

    fill_in "2011 12 To 2015 16", with: @state_domestic_product1.2011-12_to_2015-16
    fill_in "2015 16", with: @state_domestic_product1.2015-16
    fill_in "2016 17", with: @state_domestic_product1.2016-17
    fill_in "Reference", with: @state_domestic_product1.Reference
    fill_in "Sector", with: @state_domestic_product1.Sector
    click_on "Create State domestic product1"

    assert_text "State domestic product1 was successfully created"
    click_on "Back"
  end

  test "updating a State domestic product1" do
    visit state_domestic_product1s_url
    click_on "Edit", match: :first

    fill_in "2011 12 To 2015 16", with: @state_domestic_product1.2011-12_to_2015-16
    fill_in "2015 16", with: @state_domestic_product1.2015-16
    fill_in "2016 17", with: @state_domestic_product1.2016-17
    fill_in "Reference", with: @state_domestic_product1.Reference
    fill_in "Sector", with: @state_domestic_product1.Sector
    click_on "Update State domestic product1"

    assert_text "State domestic product1 was successfully updated"
    click_on "Back"
  end

  test "destroying a State domestic product1" do
    visit state_domestic_product1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "State domestic product1 was successfully destroyed"
  end
end
