require "application_system_test_case"

class OperationalAndFinancialStatus1sTest < ApplicationSystemTestCase
  setup do
    @operational_and_financial_status1 = operational_and_financial_status1s(:one)
  end

  test "visiting the index" do
    visit operational_and_financial_status1s_url
    assert_selector "h1", text: "Operational And Financial Status1s"
  end

  test "creating a Operational and financial status1" do
    visit operational_and_financial_status1s_url
    click_on "New Operational And Financial Status1"

    fill_in "Item", with: @operational_and_financial_status1.Item
    fill_in "Nbpdcl", with: @operational_and_financial_status1.NBPDCL
    fill_in "Sbpdcl", with: @operational_and_financial_status1.SBPDCL
    fill_in "Year", with: @operational_and_financial_status1.Year
    click_on "Create Operational and financial status1"

    assert_text "Operational and financial status1 was successfully created"
    click_on "Back"
  end

  test "updating a Operational and financial status1" do
    visit operational_and_financial_status1s_url
    click_on "Edit", match: :first

    fill_in "Item", with: @operational_and_financial_status1.Item
    fill_in "Nbpdcl", with: @operational_and_financial_status1.NBPDCL
    fill_in "Sbpdcl", with: @operational_and_financial_status1.SBPDCL
    fill_in "Year", with: @operational_and_financial_status1.Year
    click_on "Update Operational and financial status1"

    assert_text "Operational and financial status1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Operational and financial status1" do
    visit operational_and_financial_status1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Operational and financial status1 was successfully destroyed"
  end
end
