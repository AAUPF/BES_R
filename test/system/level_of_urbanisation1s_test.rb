require "application_system_test_case"

class LevelOfUrbanisation1sTest < ApplicationSystemTestCase
  setup do
    @level_of_urbanisation1 = level_of_urbanisation1s(:one)
  end

  test "visiting the index" do
    visit level_of_urbanisation1s_url
    assert_selector "h1", text: "Level Of Urbanisation1s"
  end

  test "creating a Level of urbanisation1" do
    visit level_of_urbanisation1s_url
    click_on "New Level Of Urbanisation1"

    fill_in "Bihar", with: @level_of_urbanisation1.Bihar
    fill_in "India", with: @level_of_urbanisation1.India
    fill_in "Indicator", with: @level_of_urbanisation1.Indicator
    fill_in "Year", with: @level_of_urbanisation1.Year
    click_on "Create Level of urbanisation1"

    assert_text "Level of urbanisation1 was successfully created"
    click_on "Back"
  end

  test "updating a Level of urbanisation1" do
    visit level_of_urbanisation1s_url
    click_on "Edit", match: :first

    fill_in "Bihar", with: @level_of_urbanisation1.Bihar
    fill_in "India", with: @level_of_urbanisation1.India
    fill_in "Indicator", with: @level_of_urbanisation1.Indicator
    fill_in "Year", with: @level_of_urbanisation1.Year
    click_on "Update Level of urbanisation1"

    assert_text "Level of urbanisation1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Level of urbanisation1" do
    visit level_of_urbanisation1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Level of urbanisation1 was successfully destroyed"
  end
end
