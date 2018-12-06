require "application_system_test_case"

class SocialWelfare2sTest < ApplicationSystemTestCase
  setup do
    @social_welfare2 = social_welfare2s(:one)
  end

  test "visiting the index" do
    visit social_welfare2s_url
    assert_selector "h1", text: "Social Welfare2s"
  end

  test "creating a Social welfare2" do
    visit social_welfare2s_url
    click_on "New Social Welfare2"

    fill_in "Total Approved Amount", with: @social_welfare2.Total_Approved_Amount
    fill_in "Total Expenditure", with: @social_welfare2.Total_Expenditure
    fill_in "Total Outlay", with: @social_welfare2.Total_Outlay
    fill_in "Utilisation Percentage", with: @social_welfare2.Utilisation_percentage
    fill_in "Year", with: @social_welfare2.Year
    click_on "Create Social welfare2"

    assert_text "Social welfare2 was successfully created"
    click_on "Back"
  end

  test "updating a Social welfare2" do
    visit social_welfare2s_url
    click_on "Edit", match: :first

    fill_in "Total Approved Amount", with: @social_welfare2.Total_Approved_Amount
    fill_in "Total Expenditure", with: @social_welfare2.Total_Expenditure
    fill_in "Total Outlay", with: @social_welfare2.Total_Outlay
    fill_in "Utilisation Percentage", with: @social_welfare2.Utilisation_percentage
    fill_in "Year", with: @social_welfare2.Year
    click_on "Update Social welfare2"

    assert_text "Social welfare2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Social welfare2" do
    visit social_welfare2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Social welfare2 was successfully destroyed"
  end
end
