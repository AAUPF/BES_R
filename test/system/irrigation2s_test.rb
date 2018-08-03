require "application_system_test_case"

class Irrigation2sTest < ApplicationSystemTestCase
  setup do
    @irrigation2 = irrigation2s(:one)
  end

  test "visiting the index" do
    visit irrigation2s_url
    assert_selector "h1", text: "Irrigation2s"
  end

  test "creating a Irrigation2" do
    visit irrigation2s_url
    click_on "New Irrigation2"

    fill_in "Created Irrigation Potential", with: @irrigation2.Created_Irrigation_Potential
    fill_in "Name Of Scheme", with: @irrigation2.Name_of_Scheme
    click_on "Create Irrigation2"

    assert_text "Irrigation2 was successfully created"
    click_on "Back"
  end

  test "updating a Irrigation2" do
    visit irrigation2s_url
    click_on "Edit", match: :first

    fill_in "Created Irrigation Potential", with: @irrigation2.Created_Irrigation_Potential
    fill_in "Name Of Scheme", with: @irrigation2.Name_of_Scheme
    click_on "Update Irrigation2"

    assert_text "Irrigation2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Irrigation2" do
    visit irrigation2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Irrigation2 was successfully destroyed"
  end
end
