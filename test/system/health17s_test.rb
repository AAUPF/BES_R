require "application_system_test_case"

class Health17sTest < ApplicationSystemTestCase
  setup do
    @health17 = health17s(:one)
  end

  test "visiting the index" do
    visit health17s_url
    assert_selector "h1", text: "Health17s"
  end

  test "creating a Health17" do
    visit health17s_url
    click_on "New Health17"

    fill_in "Contractual Grade A Nurses Employed", with: @health17.Contractual_Grade_A_Nurses_Employed
    fill_in "Contractual Post Sanctioned", with: @health17.Contractual_Post_sanctioned
    fill_in "Districts", with: @health17.Districts
    fill_in "Number Of Grade A Nurses Per Lakh Population", with: @health17.Number_of_Grade_A_Nurses_per_lakh_population
    fill_in "Regular Grade A Nurses Employed", with: @health17.Regular_Grade_A_Nurses_Employed
    fill_in "Regular Post Sanctioned", with: @health17.Regular_Post_sanctioned
    fill_in "Year", with: @health17.Year
    click_on "Create Health17"

    assert_text "Health17 was successfully created"
    click_on "Back"
  end

  test "updating a Health17" do
    visit health17s_url
    click_on "Edit", match: :first

    fill_in "Contractual Grade A Nurses Employed", with: @health17.Contractual_Grade_A_Nurses_Employed
    fill_in "Contractual Post Sanctioned", with: @health17.Contractual_Post_sanctioned
    fill_in "Districts", with: @health17.Districts
    fill_in "Number Of Grade A Nurses Per Lakh Population", with: @health17.Number_of_Grade_A_Nurses_per_lakh_population
    fill_in "Regular Grade A Nurses Employed", with: @health17.Regular_Grade_A_Nurses_Employed
    fill_in "Regular Post Sanctioned", with: @health17.Regular_Post_sanctioned
    fill_in "Year", with: @health17.Year
    click_on "Update Health17"

    assert_text "Health17 was successfully updated"
    click_on "Back"
  end

  test "destroying a Health17" do
    visit health17s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Health17 was successfully destroyed"
  end
end
