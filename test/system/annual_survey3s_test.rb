require "application_system_test_case"

class AnnualSurvey3sTest < ApplicationSystemTestCase
  setup do
    @annual_survey3 = annual_survey3s(:one)
  end

  test "visiting the index" do
    visit annual_survey3s_url
    assert_selector "h1", text: "Annual Survey3s"
  end

  test "creating a Annual survey3" do
    visit annual_survey3s_url
    click_on "New Annual Survey3"

    fill_in "Indicator", with: @annual_survey3.Indicator
    fill_in "Number Of Factories Agro Based", with: @annual_survey3.Number_of_Factories_Agro_based
    fill_in "Number Of Factories Non Agro Based", with: @annual_survey3.Number_of_Factories_Non_Agro_based
    fill_in "Number Of Factories In Operation Agro Based", with: @annual_survey3.Number_of_Factories_in_Operation_Agro_based
    fill_in "Number Of Factories In Operation Non Agro Based", with: @annual_survey3.Number_of_Factories_in_Operation_Non_Agro_Based
    fill_in "Percentage Of Agro Based", with: @annual_survey3.Percentage_of_Agro_based
    fill_in "Percentage Of Non Agro Based", with: @annual_survey3.Percentage_of_Non_Agro_based
    fill_in "Percentage Of Operation Agro Based", with: @annual_survey3.Percentage_of_Operation_Agro_based
    fill_in "Percentage Of Operation Non Agro Based", with: @annual_survey3.Percentage_of_Operation_Non_Agro_Based
    fill_in "Percentage Of Total Factories", with: @annual_survey3.Percentage_of_Total_Factories
    fill_in "Percentage Of Total Factories In Operation", with: @annual_survey3.Percentage_of_Total_Factories_in_Operation
    fill_in "Total Number Of Factories", with: @annual_survey3.Total_Number_of_Factories
    fill_in "Total Number Of Factories In Operation", with: @annual_survey3.Total_Number_of_Factories_in_Operation
    fill_in "Year", with: @annual_survey3.Year
    click_on "Create Annual survey3"

    assert_text "Annual survey3 was successfully created"
    click_on "Back"
  end

  test "updating a Annual survey3" do
    visit annual_survey3s_url
    click_on "Edit", match: :first

    fill_in "Indicator", with: @annual_survey3.Indicator
    fill_in "Number Of Factories Agro Based", with: @annual_survey3.Number_of_Factories_Agro_based
    fill_in "Number Of Factories Non Agro Based", with: @annual_survey3.Number_of_Factories_Non_Agro_based
    fill_in "Number Of Factories In Operation Agro Based", with: @annual_survey3.Number_of_Factories_in_Operation_Agro_based
    fill_in "Number Of Factories In Operation Non Agro Based", with: @annual_survey3.Number_of_Factories_in_Operation_Non_Agro_Based
    fill_in "Percentage Of Agro Based", with: @annual_survey3.Percentage_of_Agro_based
    fill_in "Percentage Of Non Agro Based", with: @annual_survey3.Percentage_of_Non_Agro_based
    fill_in "Percentage Of Operation Agro Based", with: @annual_survey3.Percentage_of_Operation_Agro_based
    fill_in "Percentage Of Operation Non Agro Based", with: @annual_survey3.Percentage_of_Operation_Non_Agro_Based
    fill_in "Percentage Of Total Factories", with: @annual_survey3.Percentage_of_Total_Factories
    fill_in "Percentage Of Total Factories In Operation", with: @annual_survey3.Percentage_of_Total_Factories_in_Operation
    fill_in "Total Number Of Factories", with: @annual_survey3.Total_Number_of_Factories
    fill_in "Total Number Of Factories In Operation", with: @annual_survey3.Total_Number_of_Factories_in_Operation
    fill_in "Year", with: @annual_survey3.Year
    click_on "Update Annual survey3"

    assert_text "Annual survey3 was successfully updated"
    click_on "Back"
  end

  test "destroying a Annual survey3" do
    visit annual_survey3s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Annual survey3 was successfully destroyed"
  end
end
