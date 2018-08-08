require "application_system_test_case"

class Health18sTest < ApplicationSystemTestCase
  setup do
    @health18 = health18s(:one)
  end

  test "visiting the index" do
    visit health18s_url
    assert_selector "h1", text: "Health18s"
  end

  test "creating a Health18" do
    visit health18s_url
    click_on "New Health18"

    fill_in "Contractual Anm Employed", with: @health18.Contractual_ANM_Employed
    fill_in "Contractual Post Sanctioned", with: @health18.Contractual_Post_sanctioned
    fill_in "Districts", with: @health18.Districts
    fill_in "Number Of Anm Per Lakh Population", with: @health18.Number_of_ANM_per_lakh_population
    fill_in "Regular Anm Employed", with: @health18.Regular_ANM_Employed
    fill_in "Regular Post Sanctioned", with: @health18.Regular_Post_sanctioned
    fill_in "Year", with: @health18.Year
    click_on "Create Health18"

    assert_text "Health18 was successfully created"
    click_on "Back"
  end

  test "updating a Health18" do
    visit health18s_url
    click_on "Edit", match: :first

    fill_in "Contractual Anm Employed", with: @health18.Contractual_ANM_Employed
    fill_in "Contractual Post Sanctioned", with: @health18.Contractual_Post_sanctioned
    fill_in "Districts", with: @health18.Districts
    fill_in "Number Of Anm Per Lakh Population", with: @health18.Number_of_ANM_per_lakh_population
    fill_in "Regular Anm Employed", with: @health18.Regular_ANM_Employed
    fill_in "Regular Post Sanctioned", with: @health18.Regular_Post_sanctioned
    fill_in "Year", with: @health18.Year
    click_on "Update Health18"

    assert_text "Health18 was successfully updated"
    click_on "Back"
  end

  test "destroying a Health18" do
    visit health18s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Health18 was successfully destroyed"
  end
end
