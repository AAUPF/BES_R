require "application_system_test_case"

class NonAgroBasedIndustries4sTest < ApplicationSystemTestCase
  setup do
    @non_agro_based_industries4 = non_agro_based_industries4s(:one)
  end

  test "visiting the index" do
    visit non_agro_based_industries4s_url
    assert_selector "h1", text: "Non Agro Based Industries4s"
  end

  test "creating a Non agro based industries4" do
    visit non_agro_based_industries4s_url
    click_on "New Non Agro Based Industries4"

    fill_in "Castor", with: @non_agro_based_industries4.Castor
    fill_in "Mulberry", with: @non_agro_based_industries4.Mulberry
    fill_in "Sericulture Sector", with: @non_agro_based_industries4.Sericulture_Sector
    fill_in "Tasar", with: @non_agro_based_industries4.Tasar
    fill_in "Year", with: @non_agro_based_industries4.Year
    click_on "Create Non agro based industries4"

    assert_text "Non agro based industries4 was successfully created"
    click_on "Back"
  end

  test "updating a Non agro based industries4" do
    visit non_agro_based_industries4s_url
    click_on "Edit", match: :first

    fill_in "Castor", with: @non_agro_based_industries4.Castor
    fill_in "Mulberry", with: @non_agro_based_industries4.Mulberry
    fill_in "Sericulture Sector", with: @non_agro_based_industries4.Sericulture_Sector
    fill_in "Tasar", with: @non_agro_based_industries4.Tasar
    fill_in "Year", with: @non_agro_based_industries4.Year
    click_on "Update Non agro based industries4"

    assert_text "Non agro based industries4 was successfully updated"
    click_on "Back"
  end

  test "destroying a Non agro based industries4" do
    visit non_agro_based_industries4s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Non agro based industries4 was successfully destroyed"
  end
end
