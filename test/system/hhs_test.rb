require "application_system_test_case"

class HhsTest < ApplicationSystemTestCase
  setup do
    @hh = hhs(:one)
  end

  test "visiting the index" do
    visit hhs_url
    assert_selector "h1", text: "Hhs"
  end

  test "creating a Hh" do
    visit hhs_url
    click_on "New Hh"

    fill_in "Name", with: @hh.name
    click_on "Create Hh"

    assert_text "Hh was successfully created"
    click_on "Back"
  end

  test "updating a Hh" do
    visit hhs_url
    click_on "Edit", match: :first

    fill_in "Name", with: @hh.name
    click_on "Update Hh"

    assert_text "Hh was successfully updated"
    click_on "Back"
  end

  test "destroying a Hh" do
    visit hhs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hh was successfully destroyed"
  end
end
