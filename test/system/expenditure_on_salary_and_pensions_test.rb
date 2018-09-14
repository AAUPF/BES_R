require "application_system_test_case"

class ExpenditureOnSalaryAndPensionsTest < ApplicationSystemTestCase
  setup do
    @expenditure_on_salary_and_pension = expenditure_on_salary_and_pensions(:one)
  end

  test "visiting the index" do
    visit expenditure_on_salary_and_pensions_url
    assert_selector "h1", text: "Expenditure On Salary And Pensions"
  end

  test "creating a Expenditure on salary and pension" do
    visit expenditure_on_salary_and_pensions_url
    click_on "New Expenditure On Salary And Pension"

    fill_in "2012 13", with: @expenditure_on_salary_and_pension.2012-13
    fill_in "2013 14", with: @expenditure_on_salary_and_pension.2013-14
    fill_in "2014 15", with: @expenditure_on_salary_and_pension.2014-15
    fill_in "2015 16", with: @expenditure_on_salary_and_pension.2015-16
    fill_in "2016 17", with: @expenditure_on_salary_and_pension.2016-17
    fill_in "2017 18 Be", with: @expenditure_on_salary_and_pension.2017-18_BE
    fill_in "Sector", with: @expenditure_on_salary_and_pension.Sector
    click_on "Create Expenditure on salary and pension"

    assert_text "Expenditure on salary and pension was successfully created"
    click_on "Back"
  end

  test "updating a Expenditure on salary and pension" do
    visit expenditure_on_salary_and_pensions_url
    click_on "Edit", match: :first

    fill_in "2012 13", with: @expenditure_on_salary_and_pension.2012-13
    fill_in "2013 14", with: @expenditure_on_salary_and_pension.2013-14
    fill_in "2014 15", with: @expenditure_on_salary_and_pension.2014-15
    fill_in "2015 16", with: @expenditure_on_salary_and_pension.2015-16
    fill_in "2016 17", with: @expenditure_on_salary_and_pension.2016-17
    fill_in "2017 18 Be", with: @expenditure_on_salary_and_pension.2017-18_BE
    fill_in "Sector", with: @expenditure_on_salary_and_pension.Sector
    click_on "Update Expenditure on salary and pension"

    assert_text "Expenditure on salary and pension was successfully updated"
    click_on "Back"
  end

  test "destroying a Expenditure on salary and pension" do
    visit expenditure_on_salary_and_pensions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Expenditure on salary and pension was successfully destroyed"
  end
end
