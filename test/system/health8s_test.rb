require "application_system_test_case"

class Health8sTest < ApplicationSystemTestCase
  setup do
    @health8 = health8s(:one)
  end

  test "visiting the index" do
    visit health8s_url
    assert_selector "h1", text: "Health8s"
  end

  test "creating a Health8" do
    visit health8s_url
    click_on "New Health8"

    fill_in "Institutional Delivery", with: @health8.Institutional_Delivery
    fill_in "Year", with: @health8.Year
    click_on "Create Health8"

    assert_text "Health8 was successfully created"
    click_on "Back"
  end

  test "updating a Health8" do
    visit health8s_url
    click_on "Edit", match: :first

    fill_in "Institutional Delivery", with: @health8.Institutional_Delivery
    fill_in "Year", with: @health8.Year
    click_on "Update Health8"

    assert_text "Health8 was successfully updated"
    click_on "Back"
  end

  test "destroying a Health8" do
    visit health8s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Health8 was successfully destroyed"
  end
end
