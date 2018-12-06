require "application_system_test_case"

class WomenEmpowerment4sTest < ApplicationSystemTestCase
  setup do
    @women_empowerment4 = women_empowerment4s(:one)
  end

  test "visiting the index" do
    visit women_empowerment4s_url
    assert_selector "h1", text: "Women Empowerment4s"
  end

  test "creating a Women empowerment4" do
    visit women_empowerment4s_url
    click_on "New Women Empowerment4"

    fill_in "Disposed", with: @women_empowerment4.Disposed
    fill_in "Percentage Of Case Disposed", with: @women_empowerment4.Percentage_of_Case_Disposed
    fill_in "Registered", with: @women_empowerment4.Registered
    fill_in "Types Of Cases", with: @women_empowerment4.Types_of_Cases
    fill_in "Year", with: @women_empowerment4.Year
    click_on "Create Women empowerment4"

    assert_text "Women empowerment4 was successfully created"
    click_on "Back"
  end

  test "updating a Women empowerment4" do
    visit women_empowerment4s_url
    click_on "Edit", match: :first

    fill_in "Disposed", with: @women_empowerment4.Disposed
    fill_in "Percentage Of Case Disposed", with: @women_empowerment4.Percentage_of_Case_Disposed
    fill_in "Registered", with: @women_empowerment4.Registered
    fill_in "Types Of Cases", with: @women_empowerment4.Types_of_Cases
    fill_in "Year", with: @women_empowerment4.Year
    click_on "Update Women empowerment4"

    assert_text "Women empowerment4 was successfully updated"
    click_on "Back"
  end

  test "destroying a Women empowerment4" do
    visit women_empowerment4s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Women empowerment4 was successfully destroyed"
  end
end
