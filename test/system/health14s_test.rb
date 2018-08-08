require "application_system_test_case"

class Health14sTest < ApplicationSystemTestCase
  setup do
    @health14 = health14s(:one)
  end

  test "visiting the index" do
    visit health14s_url
    assert_selector "h1", text: "Health14s"
  end

  test "creating a Health14" do
    visit health14s_url
    click_on "New Health14"

    fill_in "Budget For Icds Bihar", with: @health14.Budget_for_ICDS_Bihar
    fill_in "Expenditure", with: @health14.Expenditure
    fill_in "Expenditure As Percentage Of Fund Released", with: @health14.Expenditure_as_Percentage_of_Fund_Released
    fill_in "Fund Released As Percentage Of Budget", with: @health14.Fund_Released_as_Percentage_of_Budget
    fill_in "Funds Released By Goi", with: @health14.Funds_Released_by_GOI
    fill_in "Year", with: @health14.Year
    click_on "Create Health14"

    assert_text "Health14 was successfully created"
    click_on "Back"
  end

  test "updating a Health14" do
    visit health14s_url
    click_on "Edit", match: :first

    fill_in "Budget For Icds Bihar", with: @health14.Budget_for_ICDS_Bihar
    fill_in "Expenditure", with: @health14.Expenditure
    fill_in "Expenditure As Percentage Of Fund Released", with: @health14.Expenditure_as_Percentage_of_Fund_Released
    fill_in "Fund Released As Percentage Of Budget", with: @health14.Fund_Released_as_Percentage_of_Budget
    fill_in "Funds Released By Goi", with: @health14.Funds_Released_by_GOI
    fill_in "Year", with: @health14.Year
    click_on "Update Health14"

    assert_text "Health14 was successfully updated"
    click_on "Back"
  end

  test "destroying a Health14" do
    visit health14s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Health14 was successfully destroyed"
  end
end
