require "application_system_test_case"

class SupportInstitutions2sTest < ApplicationSystemTestCase
  setup do
    @support_institutions2 = support_institutions2s(:one)
  end

  test "visiting the index" do
    visit support_institutions2s_url
    assert_selector "h1", text: "Support Institutions2s"
  end

  test "creating a Support institutions2" do
    visit support_institutions2s_url
    click_on "New Support Institutions2"

    fill_in "Amount Allotted Rs Lakh", with: @support_institutions2.Amount_Allotted_Rs_lakh
    fill_in "Amount Spent In Percentage", with: @support_institutions2.Amount_Spent_in_Percentage
    fill_in "Amount Spent Rs Lakh", with: @support_institutions2.Amount_spent_Rs_lakh
    fill_in "Number Of Entrepreneurs Benefited", with: @support_institutions2.Number_of_Entrepreneurs_benefited
    fill_in "Year", with: @support_institutions2.Year
    click_on "Create Support institutions2"

    assert_text "Support institutions2 was successfully created"
    click_on "Back"
  end

  test "updating a Support institutions2" do
    visit support_institutions2s_url
    click_on "Edit", match: :first

    fill_in "Amount Allotted Rs Lakh", with: @support_institutions2.Amount_Allotted_Rs_lakh
    fill_in "Amount Spent In Percentage", with: @support_institutions2.Amount_Spent_in_Percentage
    fill_in "Amount Spent Rs Lakh", with: @support_institutions2.Amount_spent_Rs_lakh
    fill_in "Number Of Entrepreneurs Benefited", with: @support_institutions2.Number_of_Entrepreneurs_benefited
    fill_in "Year", with: @support_institutions2.Year
    click_on "Update Support institutions2"

    assert_text "Support institutions2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Support institutions2" do
    visit support_institutions2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Support institutions2 was successfully destroyed"
  end
end
