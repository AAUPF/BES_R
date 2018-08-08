require "application_system_test_case"

class Health16sTest < ApplicationSystemTestCase
  setup do
    @health16 = health16s(:one)
  end

  test "visiting the index" do
    visit health16s_url
    assert_selector "h1", text: "Health16s"
  end

  test "creating a Health16" do
    visit health16s_url
    click_on "New Health16"

    fill_in "Contractual Doctor Employed", with: @health16.Contractual_Doctor_Employed
    fill_in "Contractual Post Sanctioned", with: @health16.Contractual_Post_sanctioned
    fill_in "Districts", with: @health16.Districts
    fill_in "Number Of Doctors Per Lakh Population", with: @health16.Number_of_doctors_per_lakh_population
    fill_in "Regular Doctor Employed", with: @health16.Regular_Doctor_Employed
    fill_in "Regular Post Sanctioned", with: @health16.Regular_Post_sanctioned
    fill_in "Year", with: @health16.Year
    click_on "Create Health16"

    assert_text "Health16 was successfully created"
    click_on "Back"
  end

  test "updating a Health16" do
    visit health16s_url
    click_on "Edit", match: :first

    fill_in "Contractual Doctor Employed", with: @health16.Contractual_Doctor_Employed
    fill_in "Contractual Post Sanctioned", with: @health16.Contractual_Post_sanctioned
    fill_in "Districts", with: @health16.Districts
    fill_in "Number Of Doctors Per Lakh Population", with: @health16.Number_of_doctors_per_lakh_population
    fill_in "Regular Doctor Employed", with: @health16.Regular_Doctor_Employed
    fill_in "Regular Post Sanctioned", with: @health16.Regular_Post_sanctioned
    fill_in "Year", with: @health16.Year
    click_on "Update Health16"

    assert_text "Health16 was successfully updated"
    click_on "Back"
  end

  test "destroying a Health16" do
    visit health16s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Health16 was successfully destroyed"
  end
end
