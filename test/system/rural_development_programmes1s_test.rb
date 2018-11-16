require "application_system_test_case"

class RuralDevelopmentProgrammes1sTest < ApplicationSystemTestCase
  setup do
    @rural_development_programmes1 = rural_development_programmes1s(:one)
  end

  test "visiting the index" do
    visit rural_development_programmes1s_url
    assert_selector "h1", text: "Rural Development Programmes1s"
  end

  test "creating a Rural development programmes1" do
    visit rural_development_programmes1s_url
    click_on "New Rural Development Programmes1"

    fill_in "Items", with: @rural_development_programmes1.Items
    fill_in "Progress", with: @rural_development_programmes1.Progress
    fill_in "Year", with: @rural_development_programmes1.Year
    click_on "Create Rural development programmes1"

    assert_text "Rural development programmes1 was successfully created"
    click_on "Back"
  end

  test "updating a Rural development programmes1" do
    visit rural_development_programmes1s_url
    click_on "Edit", match: :first

    fill_in "Items", with: @rural_development_programmes1.Items
    fill_in "Progress", with: @rural_development_programmes1.Progress
    fill_in "Year", with: @rural_development_programmes1.Year
    click_on "Update Rural development programmes1"

    assert_text "Rural development programmes1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Rural development programmes1" do
    visit rural_development_programmes1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rural development programmes1 was successfully destroyed"
  end
end
