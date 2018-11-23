require "application_system_test_case"

class LevelOfUrbanisation3sTest < ApplicationSystemTestCase
  setup do
    @level_of_urbanisation3 = level_of_urbanisation3s(:one)
  end

  test "visiting the index" do
    visit level_of_urbanisation3s_url
    assert_selector "h1", text: "Level Of Urbanisation3s"
  end

  test "creating a Level of urbanisation3" do
    visit level_of_urbanisation3s_url
    click_on "New Level Of Urbanisation3"

    fill_in "Districts", with: @level_of_urbanisation3.Districts
    fill_in "Urbanisation", with: @level_of_urbanisation3.Urbanisation
    fill_in "Year", with: @level_of_urbanisation3.Year
    click_on "Create Level of urbanisation3"

    assert_text "Level of urbanisation3 was successfully created"
    click_on "Back"
  end

  test "updating a Level of urbanisation3" do
    visit level_of_urbanisation3s_url
    click_on "Edit", match: :first

    fill_in "Districts", with: @level_of_urbanisation3.Districts
    fill_in "Urbanisation", with: @level_of_urbanisation3.Urbanisation
    fill_in "Year", with: @level_of_urbanisation3.Year
    click_on "Update Level of urbanisation3"

    assert_text "Level of urbanisation3 was successfully updated"
    click_on "Back"
  end

  test "destroying a Level of urbanisation3" do
    visit level_of_urbanisation3s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Level of urbanisation3 was successfully destroyed"
  end
end
