require "application_system_test_case"

class AgroBasedIndustries4sTest < ApplicationSystemTestCase
  setup do
    @agro_based_industries4 = agro_based_industries4s(:one)
  end

  test "visiting the index" do
    visit agro_based_industries4s_url
    assert_selector "h1", text: "Agro Based Industries4s"
  end

  test "creating a Agro based industries4" do
    visit agro_based_industries4s_url
    click_on "New Agro Based Industries4"

    fill_in "Location Of Project", with: @agro_based_industries4.Location_of_Project
    fill_in "Procurement", with: @agro_based_industries4.Procurement
    fill_in "Year", with: @agro_based_industries4.Year
    click_on "Create Agro based industries4"

    assert_text "Agro based industries4 was successfully created"
    click_on "Back"
  end

  test "updating a Agro based industries4" do
    visit agro_based_industries4s_url
    click_on "Edit", match: :first

    fill_in "Location Of Project", with: @agro_based_industries4.Location_of_Project
    fill_in "Procurement", with: @agro_based_industries4.Procurement
    fill_in "Year", with: @agro_based_industries4.Year
    click_on "Update Agro based industries4"

    assert_text "Agro based industries4 was successfully updated"
    click_on "Back"
  end

  test "destroying a Agro based industries4" do
    visit agro_based_industries4s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Agro based industries4 was successfully destroyed"
  end
end
