require "application_system_test_case"

class NonAgroBasedIndustries1sTest < ApplicationSystemTestCase
  setup do
    @non_agro_based_industries1 = non_agro_based_industries1s(:one)
  end

  test "visiting the index" do
    visit non_agro_based_industries1s_url
    assert_selector "h1", text: "Non Agro Based Industries1s"
  end

  test "creating a Non agro based industries1" do
    visit non_agro_based_industries1s_url
    click_on "New Non Agro Based Industries1"

    fill_in "Districts", with: @non_agro_based_industries1.Districts
    fill_in "Products", with: @non_agro_based_industries1.Products
    click_on "Create Non agro based industries1"

    assert_text "Non agro based industries1 was successfully created"
    click_on "Back"
  end

  test "updating a Non agro based industries1" do
    visit non_agro_based_industries1s_url
    click_on "Edit", match: :first

    fill_in "Districts", with: @non_agro_based_industries1.Districts
    fill_in "Products", with: @non_agro_based_industries1.Products
    click_on "Update Non agro based industries1"

    assert_text "Non agro based industries1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Non agro based industries1" do
    visit non_agro_based_industries1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Non agro based industries1 was successfully destroyed"
  end
end
