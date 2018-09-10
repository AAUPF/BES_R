require "application_system_test_case"

class AgroBasedIndustries3sTest < ApplicationSystemTestCase
  setup do
    @agro_based_industries3 = agro_based_industries3s(:one)
  end

  test "visiting the index" do
    visit agro_based_industries3s_url
    assert_selector "h1", text: "Agro Based Industries3s"
  end

  test "creating a Agro based industries3" do
    visit agro_based_industries3s_url
    click_on "New Agro Based Industries3"

    fill_in "Daily Milk Collection", with: @agro_based_industries3.Daily_Milk_Collection
    fill_in "Union/Project", with: @agro_based_industries3.Union/Project
    fill_in "Year", with: @agro_based_industries3.Year
    click_on "Create Agro based industries3"

    assert_text "Agro based industries3 was successfully created"
    click_on "Back"
  end

  test "updating a Agro based industries3" do
    visit agro_based_industries3s_url
    click_on "Edit", match: :first

    fill_in "Daily Milk Collection", with: @agro_based_industries3.Daily_Milk_Collection
    fill_in "Union/Project", with: @agro_based_industries3.Union/Project
    fill_in "Year", with: @agro_based_industries3.Year
    click_on "Update Agro based industries3"

    assert_text "Agro based industries3 was successfully updated"
    click_on "Back"
  end

  test "destroying a Agro based industries3" do
    visit agro_based_industries3s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Agro based industries3 was successfully destroyed"
  end
end
