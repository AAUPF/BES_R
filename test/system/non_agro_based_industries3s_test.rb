require "application_system_test_case"

class NonAgroBasedIndustries3sTest < ApplicationSystemTestCase
  setup do
    @non_agro_based_industries3 = non_agro_based_industries3s(:one)
  end

  test "visiting the index" do
    visit non_agro_based_industries3s_url
    assert_selector "h1", text: "Non Agro Based Industries3s"
  end

  test "creating a Non agro based industries3" do
    visit non_agro_based_industries3s_url
    click_on "New Non Agro Based Industries3"

    fill_in "Achievement", with: @non_agro_based_industries3.Achievement
    fill_in "Achievement Percentage", with: @non_agro_based_industries3.Achievement_Percentage
    fill_in "Target", with: @non_agro_based_industries3.Target
    fill_in "Year", with: @non_agro_based_industries3.Year
    click_on "Create Non agro based industries3"

    assert_text "Non agro based industries3 was successfully created"
    click_on "Back"
  end

  test "updating a Non agro based industries3" do
    visit non_agro_based_industries3s_url
    click_on "Edit", match: :first

    fill_in "Achievement", with: @non_agro_based_industries3.Achievement
    fill_in "Achievement Percentage", with: @non_agro_based_industries3.Achievement_Percentage
    fill_in "Target", with: @non_agro_based_industries3.Target
    fill_in "Year", with: @non_agro_based_industries3.Year
    click_on "Update Non agro based industries3"

    assert_text "Non agro based industries3 was successfully updated"
    click_on "Back"
  end

  test "destroying a Non agro based industries3" do
    visit non_agro_based_industries3s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Non agro based industries3 was successfully destroyed"
  end
end
