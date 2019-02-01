require "application_system_test_case"

class EducationArtCulture8sTest < ApplicationSystemTestCase
  setup do
    @education_art_culture8 = education_art_culture8s(:one)
  end

  test "visiting the index" do
    visit education_art_culture8s_url
    assert_selector "h1", text: "Education Art Culture8s"
  end

  test "creating a Education art culture8" do
    visit education_art_culture8s_url
    click_on "New Education Art Culture8"

    fill_in "Indiactor", with: @education_art_culture8.Indiactor
    fill_in "Reading Std. Ii Level Textn In Bihar", with: @education_art_culture8.Reading_Std._II_Level_Textn_in_Bihar
    fill_in "Reading Std. Ii Level Textn In India", with: @education_art_culture8.Reading_Std._II_Level_Textn_in_India
    fill_in "Simple Subtraction Bihar", with: @education_art_culture8.Simple_Subtraction_Bihar
    fill_in "Simple Subtraction India", with: @education_art_culture8.Simple_Subtraction_India
    fill_in "Type Of School", with: @education_art_culture8.Type_of_School
    fill_in "Year", with: @education_art_culture8.Year
    click_on "Create Education art culture8"

    assert_text "Education art culture8 was successfully created"
    click_on "Back"
  end

  test "updating a Education art culture8" do
    visit education_art_culture8s_url
    click_on "Edit", match: :first

    fill_in "Indiactor", with: @education_art_culture8.Indiactor
    fill_in "Reading Std. Ii Level Textn In Bihar", with: @education_art_culture8.Reading_Std._II_Level_Textn_in_Bihar
    fill_in "Reading Std. Ii Level Textn In India", with: @education_art_culture8.Reading_Std._II_Level_Textn_in_India
    fill_in "Simple Subtraction Bihar", with: @education_art_culture8.Simple_Subtraction_Bihar
    fill_in "Simple Subtraction India", with: @education_art_culture8.Simple_Subtraction_India
    fill_in "Type Of School", with: @education_art_culture8.Type_of_School
    fill_in "Year", with: @education_art_culture8.Year
    click_on "Update Education art culture8"

    assert_text "Education art culture8 was successfully updated"
    click_on "Back"
  end

  test "destroying a Education art culture8" do
    visit education_art_culture8s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Education art culture8 was successfully destroyed"
  end
end
