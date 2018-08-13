require "application_system_test_case"

class TestiesTest < ApplicationSystemTestCase
  setup do
    @testy = testies(:one)
  end

  test "visiting the index" do
    visit testies_url
    assert_selector "h1", text: "Testies"
  end

  test "creating a Testy" do
    visit testies_url
    click_on "New Testy"

    fill_in "Name", with: @testy.name
    fill_in "Number", with: @testy.number
    click_on "Create Testy"

    assert_text "Testy was successfully created"
    click_on "Back"
  end

  test "updating a Testy" do
    visit testies_url
    click_on "Edit", match: :first

    fill_in "Name", with: @testy.name
    fill_in "Number", with: @testy.number
    click_on "Update Testy"

    assert_text "Testy was successfully updated"
    click_on "Back"
  end

  test "destroying a Testy" do
    visit testies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Testy was successfully destroyed"
  end
end
