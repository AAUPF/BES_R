require "application_system_test_case"

class EducationArtCulture7sTest < ApplicationSystemTestCase
  setup do
    @education_art_culture7 = education_art_culture7s(:one)
  end

  test "visiting the index" do
    visit education_art_culture7s_url
    assert_selector "h1", text: "Education Art Culture7s"
  end

  test "creating a Education art culture7" do
    visit education_art_culture7s_url
    click_on "New Education Art Culture7"

    fill_in "Approved Awp And B", with: @education_art_culture7.APPROVED_AWP_and_B
    fill_in "Expenditure As Percentage Of Awp And B", with: @education_art_culture7.Expenditure_as_Percentage_of_AWP_and_B
    fill_in "Fund Released By Gob", with: @education_art_culture7.Fund_Released_by_GOB
    fill_in "Fund Released By Goi", with: @education_art_culture7.Fund_Released_by_GOI
    fill_in "Programmes", with: @education_art_culture7.Programmes
    fill_in "Total Expenditure", with: @education_art_culture7.Total_Expenditure
    fill_in "Total Fund Released", with: @education_art_culture7.Total_Fund_Released
    fill_in "Year", with: @education_art_culture7.Year
    click_on "Create Education art culture7"

    assert_text "Education art culture7 was successfully created"
    click_on "Back"
  end

  test "updating a Education art culture7" do
    visit education_art_culture7s_url
    click_on "Edit", match: :first

    fill_in "Approved Awp And B", with: @education_art_culture7.APPROVED_AWP_and_B
    fill_in "Expenditure As Percentage Of Awp And B", with: @education_art_culture7.Expenditure_as_Percentage_of_AWP_and_B
    fill_in "Fund Released By Gob", with: @education_art_culture7.Fund_Released_by_GOB
    fill_in "Fund Released By Goi", with: @education_art_culture7.Fund_Released_by_GOI
    fill_in "Programmes", with: @education_art_culture7.Programmes
    fill_in "Total Expenditure", with: @education_art_culture7.Total_Expenditure
    fill_in "Total Fund Released", with: @education_art_culture7.Total_Fund_Released
    fill_in "Year", with: @education_art_culture7.Year
    click_on "Update Education art culture7"

    assert_text "Education art culture7 was successfully updated"
    click_on "Back"
  end

  test "destroying a Education art culture7" do
    visit education_art_culture7s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Education art culture7 was successfully destroyed"
  end
end
