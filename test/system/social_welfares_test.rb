require "application_system_test_case"

class SocialWelfaresTest < ApplicationSystemTestCase
  setup do
    @social_welfare = social_welfares(:one)
  end

  test "visiting the index" do
    visit social_welfares_url
    assert_selector "h1", text: "Social Welfares"
  end

  test "creating a Social welfare" do
    visit social_welfares_url
    click_on "New Social Welfare"

    fill_in "Actual Expenditure", with: @social_welfare.Actual_Expenditure
    fill_in "Budget", with: @social_welfare.Budget
    fill_in "Sector", with: @social_welfare.Sector
    fill_in "Utilisation Percentage", with: @social_welfare.Utilisation_Percentage
    fill_in "Year", with: @social_welfare.Year
    click_on "Create Social welfare"

    assert_text "Social welfare was successfully created"
    click_on "Back"
  end

  test "updating a Social welfare" do
    visit social_welfares_url
    click_on "Edit", match: :first

    fill_in "Actual Expenditure", with: @social_welfare.Actual_Expenditure
    fill_in "Budget", with: @social_welfare.Budget
    fill_in "Sector", with: @social_welfare.Sector
    fill_in "Utilisation Percentage", with: @social_welfare.Utilisation_Percentage
    fill_in "Year", with: @social_welfare.Year
    click_on "Update Social welfare"

    assert_text "Social welfare was successfully updated"
    click_on "Back"
  end

  test "destroying a Social welfare" do
    visit social_welfares_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Social welfare was successfully destroyed"
  end
end
