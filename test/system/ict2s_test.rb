require "application_system_test_case"

class Ict2sTest < ApplicationSystemTestCase
  setup do
    @ict2 = ict2s(:one)
  end

  test "visiting the index" do
    visit ict2s_url
    assert_selector "h1", text: "Ict2s"
  end

  test "creating a Ict2" do
    visit ict2s_url
    click_on "New Ict2"

    fill_in "All", with: @ict2.All
    fill_in "Rural", with: @ict2.Rural
    fill_in "State", with: @ict2.State
    fill_in "Urban", with: @ict2.Urban
    fill_in "Year", with: @ict2.Year
    click_on "Create Ict2"

    assert_text "Ict2 was successfully created"
    click_on "Back"
  end

  test "updating a Ict2" do
    visit ict2s_url
    click_on "Edit", match: :first

    fill_in "All", with: @ict2.All
    fill_in "Rural", with: @ict2.Rural
    fill_in "State", with: @ict2.State
    fill_in "Urban", with: @ict2.Urban
    fill_in "Year", with: @ict2.Year
    click_on "Update Ict2"

    assert_text "Ict2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Ict2" do
    visit ict2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ict2 was successfully destroyed"
  end
end
