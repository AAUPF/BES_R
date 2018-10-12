require "application_system_test_case"

class AnnualSurvey6sTest < ApplicationSystemTestCase
  setup do
    @annual_survey6 = annual_survey6s(:one)
  end

  test "visiting the index" do
    visit annual_survey6s_url
    assert_selector "h1", text: "Annual Survey6s"
  end

  test "creating a Annual survey6" do
    visit annual_survey6s_url
    click_on "New Annual Survey6"

    fill_in "Districts", with: @annual_survey6.Districts
    fill_in "Employment Per Factory", with: @annual_survey6.Employment_per_Factory
    fill_in "Gva Percentage Share In India", with: @annual_survey6.GVA_Percentage_Share_in_India
    fill_in "Gva As Percentage Of Gvo", with: @annual_survey6.GVA_as_Percentage_of_GVO
    fill_in "Gross Value Added Gva Rs Crore", with: @annual_survey6.Gross_Value_Added_GVA_Rs_crore
    fill_in "Gross Value Of Output Gvo Rs Crore", with: @annual_survey6.Gross_Value_of_Output_GVO_Rs_crore
    fill_in "Number Of Factories In Operation", with: @annual_survey6.Number_of_Factories_in_Operation
    fill_in "Number Of Persons Engaged", with: @annual_survey6.Number_of_Persons_Engaged
    fill_in "Percentage Share In India", with: @annual_survey6.Percentage_Share_in_India
    fill_in "Wages Salaries And Bonus Per Person Annually Rs", with: @annual_survey6.Wages_Salaries_and_Bonus_per_Person_annually_Rs
    click_on "Create Annual survey6"

    assert_text "Annual survey6 was successfully created"
    click_on "Back"
  end

  test "updating a Annual survey6" do
    visit annual_survey6s_url
    click_on "Edit", match: :first

    fill_in "Districts", with: @annual_survey6.Districts
    fill_in "Employment Per Factory", with: @annual_survey6.Employment_per_Factory
    fill_in "Gva Percentage Share In India", with: @annual_survey6.GVA_Percentage_Share_in_India
    fill_in "Gva As Percentage Of Gvo", with: @annual_survey6.GVA_as_Percentage_of_GVO
    fill_in "Gross Value Added Gva Rs Crore", with: @annual_survey6.Gross_Value_Added_GVA_Rs_crore
    fill_in "Gross Value Of Output Gvo Rs Crore", with: @annual_survey6.Gross_Value_of_Output_GVO_Rs_crore
    fill_in "Number Of Factories In Operation", with: @annual_survey6.Number_of_Factories_in_Operation
    fill_in "Number Of Persons Engaged", with: @annual_survey6.Number_of_Persons_Engaged
    fill_in "Percentage Share In India", with: @annual_survey6.Percentage_Share_in_India
    fill_in "Wages Salaries And Bonus Per Person Annually Rs", with: @annual_survey6.Wages_Salaries_and_Bonus_per_Person_annually_Rs
    click_on "Update Annual survey6"

    assert_text "Annual survey6 was successfully updated"
    click_on "Back"
  end

  test "destroying a Annual survey6" do
    visit annual_survey6s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Annual survey6 was successfully destroyed"
  end
end
