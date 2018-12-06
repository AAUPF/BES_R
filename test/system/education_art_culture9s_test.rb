require "application_system_test_case"

class EducationArtCulture9sTest < ApplicationSystemTestCase
  setup do
    @education_art_culture9 = education_art_culture9s(:one)
  end

  test "visiting the index" do
    visit education_art_culture9s_url
    assert_selector "h1", text: "Education Art Culture9s"
  end

  test "creating a Education art culture9" do
    visit education_art_culture9s_url
    click_on "New Education Art Culture9"

    fill_in "2013", with: @education_art_culture9.2013
    fill_in "2014", with: @education_art_culture9.2014
    fill_in "2015", with: @education_art_culture9.2015
    fill_in "2016", with: @education_art_culture9.2016
    fill_in "Indicator", with: @education_art_culture9.Indicator
    fill_in "Type Of Institutions", with: @education_art_culture9.Type_of_Institutions
    click_on "Create Education art culture9"

    assert_text "Education art culture9 was successfully created"
    click_on "Back"
  end

  test "updating a Education art culture9" do
    visit education_art_culture9s_url
    click_on "Edit", match: :first

    fill_in "2013", with: @education_art_culture9.2013
    fill_in "2014", with: @education_art_culture9.2014
    fill_in "2015", with: @education_art_culture9.2015
    fill_in "2016", with: @education_art_culture9.2016
    fill_in "Indicator", with: @education_art_culture9.Indicator
    fill_in "Type Of Institutions", with: @education_art_culture9.Type_of_Institutions
    click_on "Update Education art culture9"

    assert_text "Education art culture9 was successfully updated"
    click_on "Back"
  end

  test "destroying a Education art culture9" do
    visit education_art_culture9s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Education art culture9 was successfully destroyed"
  end
end
