require "application_system_test_case"

class EducationArtCulture3sTest < ApplicationSystemTestCase
  setup do
    @education_art_culture3 = education_art_culture3s(:one)
  end

  test "visiting the index" do
    visit education_art_culture3s_url
    assert_selector "h1", text: "Education Art Culture3s"
  end

  test "creating a Education art culture3" do
    visit education_art_culture3s_url
    click_on "New Education Art Culture3"

    fill_in "2011 12", with: @education_art_culture3.2011-12
    fill_in "2012 13", with: @education_art_culture3.2012-13
    fill_in "2013 14", with: @education_art_culture3.2013-14
    fill_in "2014 15", with: @education_art_culture3.2014-15
    fill_in "2015 16", with: @education_art_culture3.2015-16
    fill_in "Indicator", with: @education_art_culture3.Indicator
    fill_in "Sector", with: @education_art_culture3.Sector
    click_on "Create Education art culture3"

    assert_text "Education art culture3 was successfully created"
    click_on "Back"
  end

  test "updating a Education art culture3" do
    visit education_art_culture3s_url
    click_on "Edit", match: :first

    fill_in "2011 12", with: @education_art_culture3.2011-12
    fill_in "2012 13", with: @education_art_culture3.2012-13
    fill_in "2013 14", with: @education_art_culture3.2013-14
    fill_in "2014 15", with: @education_art_culture3.2014-15
    fill_in "2015 16", with: @education_art_culture3.2015-16
    fill_in "Indicator", with: @education_art_culture3.Indicator
    fill_in "Sector", with: @education_art_culture3.Sector
    click_on "Update Education art culture3"

    assert_text "Education art culture3 was successfully updated"
    click_on "Back"
  end

  test "destroying a Education art culture3" do
    visit education_art_culture3s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Education art culture3 was successfully destroyed"
  end
end
