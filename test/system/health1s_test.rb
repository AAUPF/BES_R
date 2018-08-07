require "application_system_test_case"

class Health1sTest < ApplicationSystemTestCase
  setup do
    @health1 = health1s(:one)
  end

  test "visiting the index" do
    visit health1s_url
    assert_selector "h1", text: "Health1s"
  end

  test "creating a Health1" do
    visit health1s_url
    click_on "New Health1"

    fill_in "Per Capita Expenditure On Social Services Bihar", with: @health1.Per_Capita_Expenditure_on_Social_Services_Bihar
    fill_in "Per Capita Expenditure On Social Services India", with: @health1.Per_Capita_Expenditure_on_Social_Services_India
    fill_in "Percentage Share Of Social Services In Total Expenditure Bihar", with: @health1.Percentage_share_of_Social_Services_in_Total_Expenditure_Bihar
    fill_in "Percentage Share Of Social Services In Total Expenditure India", with: @health1.Percentage_share_of_Social_Services_in_Total_Expenditure_India
    fill_in "Total Expense Bihar", with: @health1.Total_Expense_Bihar
    fill_in "Total Expense India", with: @health1.Total_Expense_India
    fill_in "Total Expense On Social Services Bihar", with: @health1.Total_Expense_on_Social_Services_Bihar
    fill_in "Total Expense On Social Services India", with: @health1.Total_Expense_on_Social_Services_India
    fill_in "Year", with: @health1.Year
    click_on "Create Health1"

    assert_text "Health1 was successfully created"
    click_on "Back"
  end

  test "updating a Health1" do
    visit health1s_url
    click_on "Edit", match: :first

    fill_in "Per Capita Expenditure On Social Services Bihar", with: @health1.Per_Capita_Expenditure_on_Social_Services_Bihar
    fill_in "Per Capita Expenditure On Social Services India", with: @health1.Per_Capita_Expenditure_on_Social_Services_India
    fill_in "Percentage Share Of Social Services In Total Expenditure Bihar", with: @health1.Percentage_share_of_Social_Services_in_Total_Expenditure_Bihar
    fill_in "Percentage Share Of Social Services In Total Expenditure India", with: @health1.Percentage_share_of_Social_Services_in_Total_Expenditure_India
    fill_in "Total Expense Bihar", with: @health1.Total_Expense_Bihar
    fill_in "Total Expense India", with: @health1.Total_Expense_India
    fill_in "Total Expense On Social Services Bihar", with: @health1.Total_Expense_on_Social_Services_Bihar
    fill_in "Total Expense On Social Services India", with: @health1.Total_Expense_on_Social_Services_India
    fill_in "Year", with: @health1.Year
    click_on "Update Health1"

    assert_text "Health1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Health1" do
    visit health1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Health1 was successfully destroyed"
  end
end
