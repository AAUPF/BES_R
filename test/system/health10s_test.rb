require "application_system_test_case"

class Health10sTest < ApplicationSystemTestCase
  setup do
    @health10 = health10s(:one)
  end

  test "visiting the index" do
    visit health10s_url
    assert_selector "h1", text: "Health10s"
  end

  test "creating a Health10" do
    visit health10s_url
    click_on "New Health10"

    fill_in "Achievement", with: @health10.Achievement
    fill_in "Antigenname", with: @health10.Antigenname
    fill_in "Target", with: @health10.Target
    fill_in "Year", with: @health10.Year
    click_on "Create Health10"

    assert_text "Health10 was successfully created"
    click_on "Back"
  end

  test "updating a Health10" do
    visit health10s_url
    click_on "Edit", match: :first

    fill_in "Achievement", with: @health10.Achievement
    fill_in "Antigenname", with: @health10.Antigenname
    fill_in "Target", with: @health10.Target
    fill_in "Year", with: @health10.Year
    click_on "Update Health10"

    assert_text "Health10 was successfully updated"
    click_on "Back"
  end

  test "destroying a Health10" do
    visit health10s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Health10 was successfully destroyed"
  end
end
