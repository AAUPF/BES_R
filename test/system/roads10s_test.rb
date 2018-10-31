require "application_system_test_case"

class Roads10sTest < ApplicationSystemTestCase
  setup do
    @roads10 = roads10s(:one)
  end

  test "visiting the index" do
    visit roads10s_url
    assert_selector "h1", text: "Roads10s"
  end

  test "creating a Roads10" do
    visit roads10s_url
    click_on "New Roads10"

    fill_in "Districts", with: @roads10.Districts
    fill_in "Mdr", with: @roads10.MDR
    fill_in "Nh", with: @roads10.NH
    fill_in "Rural Road", with: @roads10.Rural_Road
    fill_in "Sh", with: @roads10.SH
    fill_in "Year", with: @roads10.Year
    click_on "Create Roads10"

    assert_text "Roads10 was successfully created"
    click_on "Back"
  end

  test "updating a Roads10" do
    visit roads10s_url
    click_on "Edit", match: :first

    fill_in "Districts", with: @roads10.Districts
    fill_in "Mdr", with: @roads10.MDR
    fill_in "Nh", with: @roads10.NH
    fill_in "Rural Road", with: @roads10.Rural_Road
    fill_in "Sh", with: @roads10.SH
    fill_in "Year", with: @roads10.Year
    click_on "Update Roads10"

    assert_text "Roads10 was successfully updated"
    click_on "Back"
  end

  test "destroying a Roads10" do
    visit roads10s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Roads10 was successfully destroyed"
  end
end
