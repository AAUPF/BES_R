require "application_system_test_case"

class Roads7sTest < ApplicationSystemTestCase
  setup do
    @roads7 = roads7s(:one)
  end

  test "visiting the index" do
    visit roads7s_url
    assert_selector "h1", text: "Roads7s"
  end

  test "creating a Roads7" do
    visit roads7s_url
    click_on "New Roads7"

    fill_in "Length In Kms", with: @roads7.Length_in_kms
    fill_in "Project", with: @roads7.Project
    fill_in "Remarks", with: @roads7.Remarks
    click_on "Create Roads7"

    assert_text "Roads7 was successfully created"
    click_on "Back"
  end

  test "updating a Roads7" do
    visit roads7s_url
    click_on "Edit", match: :first

    fill_in "Length In Kms", with: @roads7.Length_in_kms
    fill_in "Project", with: @roads7.Project
    fill_in "Remarks", with: @roads7.Remarks
    click_on "Update Roads7"

    assert_text "Roads7 was successfully updated"
    click_on "Back"
  end

  test "destroying a Roads7" do
    visit roads7s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Roads7 was successfully destroyed"
  end
end
