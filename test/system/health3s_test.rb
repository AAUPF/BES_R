require "application_system_test_case"

class Health3sTest < ApplicationSystemTestCase
  setup do
    @health3 = health3s(:one)
  end

  test "visiting the index" do
    visit health3s_url
    assert_selector "h1", text: "Health3s"
  end

  test "creating a Health3" do
    visit health3s_url
    click_on "New Health3"

    fill_in "Area", with: @health3.Area
    fill_in "Child Mortality Rate", with: @health3.Child_Mortality_Rate
    fill_in "Crude Birth Rate", with: @health3.Crude_Birth_Rate
    fill_in "Infant Mortality Rate", with: @health3.Infant_Mortality_Rate
    fill_in "Neo Natal Mortality Rate", with: @health3.Neo_Natal_Mortality_Rate
    fill_in "Region", with: @health3.Region
    fill_in "Total Fertility Rate", with: @health3.Total_Fertility_Rate
    fill_in "Total Marital Fertility Rate", with: @health3.Total_Marital_Fertility_Rate
    fill_in "Under Five Mortality Rate", with: @health3.Under_Five_Mortality_Rate
    fill_in "Year", with: @health3.Year
    click_on "Create Health3"

    assert_text "Health3 was successfully created"
    click_on "Back"
  end

  test "updating a Health3" do
    visit health3s_url
    click_on "Edit", match: :first

    fill_in "Area", with: @health3.Area
    fill_in "Child Mortality Rate", with: @health3.Child_Mortality_Rate
    fill_in "Crude Birth Rate", with: @health3.Crude_Birth_Rate
    fill_in "Infant Mortality Rate", with: @health3.Infant_Mortality_Rate
    fill_in "Neo Natal Mortality Rate", with: @health3.Neo_Natal_Mortality_Rate
    fill_in "Region", with: @health3.Region
    fill_in "Total Fertility Rate", with: @health3.Total_Fertility_Rate
    fill_in "Total Marital Fertility Rate", with: @health3.Total_Marital_Fertility_Rate
    fill_in "Under Five Mortality Rate", with: @health3.Under_Five_Mortality_Rate
    fill_in "Year", with: @health3.Year
    click_on "Update Health3"

    assert_text "Health3 was successfully updated"
    click_on "Back"
  end

  test "destroying a Health3" do
    visit health3s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Health3 was successfully destroyed"
  end
end
