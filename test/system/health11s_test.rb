require "application_system_test_case"

class Health11sTest < ApplicationSystemTestCase
  setup do
    @health11 = health11s(:one)
  end

  test "visiting the index" do
    visit health11s_url
    assert_selector "h1", text: "Health11s"
  end

  test "creating a Health11" do
    visit health11s_url
    click_on "New Health11"

    fill_in "Diseases", with: @health11.Diseases
    fill_in "Number Of Patients", with: @health11.Number_of_Patients
    fill_in "Year", with: @health11.Year
    click_on "Create Health11"

    assert_text "Health11 was successfully created"
    click_on "Back"
  end

  test "updating a Health11" do
    visit health11s_url
    click_on "Edit", match: :first

    fill_in "Diseases", with: @health11.Diseases
    fill_in "Number Of Patients", with: @health11.Number_of_Patients
    fill_in "Year", with: @health11.Year
    click_on "Update Health11"

    assert_text "Health11 was successfully updated"
    click_on "Back"
  end

  test "destroying a Health11" do
    visit health11s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Health11 was successfully destroyed"
  end
end
