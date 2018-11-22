require "application_system_test_case"

class MunicipalFinancesTest < ApplicationSystemTestCase
  setup do
    @municipal_finance = municipal_finances(:one)
  end

  test "visiting the index" do
    visit municipal_finances_url
    assert_selector "h1", text: "Municipal Finances"
  end

  test "creating a Municipal finance" do
    visit municipal_finances_url
    click_on "New Municipal Finance"

    fill_in "2014 15", with: @municipal_finance.2014-15
    fill_in "2015 16", with: @municipal_finance.2015-16
    fill_in "Indicator", with: @municipal_finance.Indicator
    fill_in "Indicators", with: @municipal_finance.Indicators
    click_on "Create Municipal finance"

    assert_text "Municipal finance was successfully created"
    click_on "Back"
  end

  test "updating a Municipal finance" do
    visit municipal_finances_url
    click_on "Edit", match: :first

    fill_in "2014 15", with: @municipal_finance.2014-15
    fill_in "2015 16", with: @municipal_finance.2015-16
    fill_in "Indicator", with: @municipal_finance.Indicator
    fill_in "Indicators", with: @municipal_finance.Indicators
    click_on "Update Municipal finance"

    assert_text "Municipal finance was successfully updated"
    click_on "Back"
  end

  test "destroying a Municipal finance" do
    visit municipal_finances_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Municipal finance was successfully destroyed"
  end
end
