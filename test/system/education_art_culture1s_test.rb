require "application_system_test_case"

class EducationArtCulture1sTest < ApplicationSystemTestCase
  setup do
    @education_art_culture1 = education_art_culture1s(:one)
  end

  test "visiting the index" do
    visit education_art_culture1s_url
    assert_selector "h1", text: "Education Art Culture1s"
  end

  test "creating a Education art culture1" do
    visit education_art_culture1s_url
    click_on "New Education Art Culture1"

    fill_in "Female", with: @education_art_culture1.Female
    fill_in "Indicator", with: @education_art_culture1.Indicator
    fill_in "Indicator1", with: @education_art_culture1.Indicator1
    fill_in "Male", with: @education_art_culture1.Male
    fill_in "Persons", with: @education_art_culture1.Persons
    fill_in "Year", with: @education_art_culture1.Year
    click_on "Create Education art culture1"

    assert_text "Education art culture1 was successfully created"
    click_on "Back"
  end

  test "updating a Education art culture1" do
    visit education_art_culture1s_url
    click_on "Edit", match: :first

    fill_in "Female", with: @education_art_culture1.Female
    fill_in "Indicator", with: @education_art_culture1.Indicator
    fill_in "Indicator1", with: @education_art_culture1.Indicator1
    fill_in "Male", with: @education_art_culture1.Male
    fill_in "Persons", with: @education_art_culture1.Persons
    fill_in "Year", with: @education_art_culture1.Year
    click_on "Update Education art culture1"

    assert_text "Education art culture1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Education art culture1" do
    visit education_art_culture1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Education art culture1 was successfully destroyed"
  end
end
