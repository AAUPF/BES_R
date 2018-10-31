require "application_system_test_case"

class Ict3sTest < ApplicationSystemTestCase
  setup do
    @ict3 = ict3s(:one)
  end

  test "visiting the index" do
    visit ict3s_url
    assert_selector "h1", text: "Ict3s"
  end

  test "creating a Ict3" do
    visit ict3s_url
    click_on "New Ict3"

    fill_in "Coverage In Percentage", with: @ict3.Coverage_in_percentage
    fill_in "Item", with: @ict3.Item
    fill_in "Total", with: @ict3.Total
    click_on "Create Ict3"

    assert_text "Ict3 was successfully created"
    click_on "Back"
  end

  test "updating a Ict3" do
    visit ict3s_url
    click_on "Edit", match: :first

    fill_in "Coverage In Percentage", with: @ict3.Coverage_in_percentage
    fill_in "Item", with: @ict3.Item
    fill_in "Total", with: @ict3.Total
    click_on "Update Ict3"

    assert_text "Ict3 was successfully updated"
    click_on "Back"
  end

  test "destroying a Ict3" do
    visit ict3s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ict3 was successfully destroyed"
  end
end
