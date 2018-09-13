require "application_system_test_case"

class StatePublicSector2sTest < ApplicationSystemTestCase
  setup do
    @state_public_sector2 = state_public_sector2s(:one)
  end

  test "visiting the index" do
    visit state_public_sector2s_url
    assert_selector "h1", text: "State Public Sector2s"
  end

  test "creating a State public sector2" do
    visit state_public_sector2s_url
    click_on "New State Public Sector2"

    fill_in "Government Companies Capital", with: @state_public_sector2.Government_Companies_Capital
    fill_in "Government Companies Long Term Loans", with: @state_public_sector2.Government_Companies_Long_Term_Loans
    fill_in "Grand Total", with: @state_public_sector2.Grand_Total
    fill_in "Statutory Corporations Capital", with: @state_public_sector2.Statutory_Corporations_Capital
    fill_in "Statutory Corporations Long Term Loans", with: @state_public_sector2.Statutory_Corporations_Long_Term_Loans
    fill_in "Total Government Companies", with: @state_public_sector2.Total_Government_Companies
    fill_in "Total Statutory Corporations", with: @state_public_sector2.Total_Statutory_Corporations
    fill_in "Type Of Company Or Corporation", with: @state_public_sector2.Type_of_Company_or_corporation
    click_on "Create State public sector2"

    assert_text "State public sector2 was successfully created"
    click_on "Back"
  end

  test "updating a State public sector2" do
    visit state_public_sector2s_url
    click_on "Edit", match: :first

    fill_in "Government Companies Capital", with: @state_public_sector2.Government_Companies_Capital
    fill_in "Government Companies Long Term Loans", with: @state_public_sector2.Government_Companies_Long_Term_Loans
    fill_in "Grand Total", with: @state_public_sector2.Grand_Total
    fill_in "Statutory Corporations Capital", with: @state_public_sector2.Statutory_Corporations_Capital
    fill_in "Statutory Corporations Long Term Loans", with: @state_public_sector2.Statutory_Corporations_Long_Term_Loans
    fill_in "Total Government Companies", with: @state_public_sector2.Total_Government_Companies
    fill_in "Total Statutory Corporations", with: @state_public_sector2.Total_Statutory_Corporations
    fill_in "Type Of Company Or Corporation", with: @state_public_sector2.Type_of_Company_or_corporation
    click_on "Update State public sector2"

    assert_text "State public sector2 was successfully updated"
    click_on "Back"
  end

  test "destroying a State public sector2" do
    visit state_public_sector2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "State public sector2 was successfully destroyed"
  end
end
