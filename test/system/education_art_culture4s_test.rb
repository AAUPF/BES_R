require "application_system_test_case"

class EducationArtCulture4sTest < ApplicationSystemTestCase
  setup do
    @education_art_culture4 = education_art_culture4s(:one)
  end

  test "visiting the index" do
    visit education_art_culture4s_url
    assert_selector "h1", text: "Education Art Culture4s"
  end

  test "creating a Education art culture4" do
    visit education_art_culture4s_url
    click_on "New Education Art Culture4"

    fill_in "Boys", with: @education_art_culture4.Boys
    fill_in "Combined", with: @education_art_culture4.Combined
    fill_in "Girls", with: @education_art_culture4.Girls
    fill_in "Indicator", with: @education_art_culture4.Indicator
    fill_in "Indicator1", with: @education_art_culture4.Indicator1
    fill_in "Year", with: @education_art_culture4.Year
    click_on "Create Education art culture4"

    assert_text "Education art culture4 was successfully created"
    click_on "Back"
  end

  test "updating a Education art culture4" do
    visit education_art_culture4s_url
    click_on "Edit", match: :first

    fill_in "Boys", with: @education_art_culture4.Boys
    fill_in "Combined", with: @education_art_culture4.Combined
    fill_in "Girls", with: @education_art_culture4.Girls
    fill_in "Indicator", with: @education_art_culture4.Indicator
    fill_in "Indicator1", with: @education_art_culture4.Indicator1
    fill_in "Year", with: @education_art_culture4.Year
    click_on "Update Education art culture4"

    assert_text "Education art culture4 was successfully updated"
    click_on "Back"
  end

  test "destroying a Education art culture4" do
    visit education_art_culture4s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Education art culture4 was successfully destroyed"
  end
end
