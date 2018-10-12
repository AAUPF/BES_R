require "application_system_test_case"

class SixthEconomicCensus1sTest < ApplicationSystemTestCase
  setup do
    @sixth_economic_census1 = sixth_economic_census1s(:one)
  end

  test "visiting the index" do
    visit sixth_economic_census1s_url
    assert_selector "h1", text: "Sixth Economic Census1s"
  end

  test "creating a Sixth economic census1" do
    visit sixth_economic_census1s_url
    click_on "New Sixth Economic Census1"

    fill_in "Number 2005", with: @sixth_economic_census1.Number_2005
    fill_in "Number 2013", with: @sixth_economic_census1.Number_2013
    fill_in "Percentage Increase", with: @sixth_economic_census1.Percentage_Increase
    fill_in "Variable1", with: @sixth_economic_census1.Variable1
    fill_in "Variable2", with: @sixth_economic_census1.Variable2
    click_on "Create Sixth economic census1"

    assert_text "Sixth economic census1 was successfully created"
    click_on "Back"
  end

  test "updating a Sixth economic census1" do
    visit sixth_economic_census1s_url
    click_on "Edit", match: :first

    fill_in "Number 2005", with: @sixth_economic_census1.Number_2005
    fill_in "Number 2013", with: @sixth_economic_census1.Number_2013
    fill_in "Percentage Increase", with: @sixth_economic_census1.Percentage_Increase
    fill_in "Variable1", with: @sixth_economic_census1.Variable1
    fill_in "Variable2", with: @sixth_economic_census1.Variable2
    click_on "Update Sixth economic census1"

    assert_text "Sixth economic census1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Sixth economic census1" do
    visit sixth_economic_census1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sixth economic census1 was successfully destroyed"
  end
end
