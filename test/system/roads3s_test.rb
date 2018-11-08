require "application_system_test_case"

class Roads3sTest < ApplicationSystemTestCase
  setup do
    @roads3 = roads3s(:one)
  end

  test "visiting the index" do
    visit roads3s_url
    assert_selector "h1", text: "Roads3s"
  end

  test "creating a Roads3" do
    visit roads3s_url
    click_on "New Roads3"

    fill_in "Indicator", with: @roads3.Indicator
    fill_in "Nh", with: @roads3.NH
    fill_in "Other", with: @roads3.Other
    fill_in "Sh", with: @roads3.SH
    fill_in "State", with: @roads3.State
    fill_in "Total", with: @roads3.Total
    click_on "Create Roads3"

    assert_text "Roads3 was successfully created"
    click_on "Back"
  end

  test "updating a Roads3" do
    visit roads3s_url
    click_on "Edit", match: :first

    fill_in "Indicator", with: @roads3.Indicator
    fill_in "Nh", with: @roads3.NH
    fill_in "Other", with: @roads3.Other
    fill_in "Sh", with: @roads3.SH
    fill_in "State", with: @roads3.State
    fill_in "Total", with: @roads3.Total
    click_on "Update Roads3"

    assert_text "Roads3 was successfully updated"
    click_on "Back"
  end

  test "destroying a Roads3" do
    visit roads3s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Roads3 was successfully destroyed"
  end
end
