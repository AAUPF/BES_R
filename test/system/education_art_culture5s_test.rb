require "application_system_test_case"

class EducationArtCulture5sTest < ApplicationSystemTestCase
  setup do
    @education_art_culture5 = education_art_culture5s(:one)
  end

  test "visiting the index" do
    visit education_art_culture5s_url
    assert_selector "h1", text: "Education Art Culture5s"
  end

  test "creating a Education art culture5" do
    visit education_art_culture5s_url
    click_on "New Education Art Culture5"

    fill_in "Higher", with: @education_art_culture5.Higher
    fill_in "Primary", with: @education_art_culture5.Primary
    fill_in "Secondary", with: @education_art_culture5.Secondary
    fill_in "Social Services", with: @education_art_culture5.Social_Services
    fill_in "Total", with: @education_art_culture5.Total
    fill_in "Total Budget", with: @education_art_culture5.Total_Budget
    fill_in "Year", with: @education_art_culture5.Year
    click_on "Create Education art culture5"

    assert_text "Education art culture5 was successfully created"
    click_on "Back"
  end

  test "updating a Education art culture5" do
    visit education_art_culture5s_url
    click_on "Edit", match: :first

    fill_in "Higher", with: @education_art_culture5.Higher
    fill_in "Primary", with: @education_art_culture5.Primary
    fill_in "Secondary", with: @education_art_culture5.Secondary
    fill_in "Social Services", with: @education_art_culture5.Social_Services
    fill_in "Total", with: @education_art_culture5.Total
    fill_in "Total Budget", with: @education_art_culture5.Total_Budget
    fill_in "Year", with: @education_art_culture5.Year
    click_on "Update Education art culture5"

    assert_text "Education art culture5 was successfully updated"
    click_on "Back"
  end

  test "destroying a Education art culture5" do
    visit education_art_culture5s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Education art culture5 was successfully destroyed"
  end
end
