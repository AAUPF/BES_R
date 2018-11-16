require "application_system_test_case"

class RuralDevelopmentProgrammes11sTest < ApplicationSystemTestCase
  setup do
    @rural_development_programmes11 = rural_development_programmes11s(:one)
  end

  test "visiting the index" do
    visit rural_development_programmes11s_url
    assert_selector "h1", text: "Rural Development Programmes11s"
  end

  test "creating a Rural development programmes11" do
    visit rural_development_programmes11s_url
    click_on "New Rural Development Programmes11"

    fill_in "Placed", with: @rural_development_programmes11.Placed
    fill_in "Programme", with: @rural_development_programmes11.Programme
    fill_in "Trained", with: @rural_development_programmes11.Trained
    click_on "Create Rural development programmes11"

    assert_text "Rural development programmes11 was successfully created"
    click_on "Back"
  end

  test "updating a Rural development programmes11" do
    visit rural_development_programmes11s_url
    click_on "Edit", match: :first

    fill_in "Placed", with: @rural_development_programmes11.Placed
    fill_in "Programme", with: @rural_development_programmes11.Programme
    fill_in "Trained", with: @rural_development_programmes11.Trained
    click_on "Update Rural development programmes11"

    assert_text "Rural development programmes11 was successfully updated"
    click_on "Back"
  end

  test "destroying a Rural development programmes11" do
    visit rural_development_programmes11s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rural development programmes11 was successfully destroyed"
  end
end
