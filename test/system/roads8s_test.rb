require "application_system_test_case"

class Roads8sTest < ApplicationSystemTestCase
  setup do
    @roads8 = roads8s(:one)
  end

  test "visiting the index" do
    visit roads8s_url
    assert_selector "h1", text: "Roads8s"
  end

  test "creating a Roads8" do
    visit roads8s_url
    click_on "New Roads8"

    fill_in "Agency Wise Road Bridge", with: @roads8.Agency_wise_Road_Bridge
    fill_in "Length In Kms", with: @roads8.Length_in_kms
    fill_in "Remarks", with: @roads8.Remarks
    click_on "Create Roads8"

    assert_text "Roads8 was successfully created"
    click_on "Back"
  end

  test "updating a Roads8" do
    visit roads8s_url
    click_on "Edit", match: :first

    fill_in "Agency Wise Road Bridge", with: @roads8.Agency_wise_Road_Bridge
    fill_in "Length In Kms", with: @roads8.Length_in_kms
    fill_in "Remarks", with: @roads8.Remarks
    click_on "Update Roads8"

    assert_text "Roads8 was successfully updated"
    click_on "Back"
  end

  test "destroying a Roads8" do
    visit roads8s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Roads8 was successfully destroyed"
  end
end
