require "application_system_test_case"

class Health9sTest < ApplicationSystemTestCase
  setup do
    @health9 = health9s(:one)
  end

  test "visiting the index" do
    visit health9s_url
    assert_selector "h1", text: "Health9s"
  end

  test "creating a Health9" do
    visit health9s_url
    click_on "New Health9"

    fill_in "Percentage Point Increase", with: @health9.Percentage_Point_Increase
    fill_in "Percentage Of Children Fully Immunized Nfhs 3 2005 06", with: @health9.Percentage_of_children_fully_immunized_NFHS_3_2005_06
    fill_in "Percentage Of Children Fully Immunized Nfhs 4 2015 16", with: @health9.Percentage_of_children_fully_immunized_NFHS_4_2015_16
    fill_in "Rank By Percentage Increase", with: @health9.Rank_by_percentage_increase
    fill_in "State", with: @health9.State
    click_on "Create Health9"

    assert_text "Health9 was successfully created"
    click_on "Back"
  end

  test "updating a Health9" do
    visit health9s_url
    click_on "Edit", match: :first

    fill_in "Percentage Point Increase", with: @health9.Percentage_Point_Increase
    fill_in "Percentage Of Children Fully Immunized Nfhs 3 2005 06", with: @health9.Percentage_of_children_fully_immunized_NFHS_3_2005_06
    fill_in "Percentage Of Children Fully Immunized Nfhs 4 2015 16", with: @health9.Percentage_of_children_fully_immunized_NFHS_4_2015_16
    fill_in "Rank By Percentage Increase", with: @health9.Rank_by_percentage_increase
    fill_in "State", with: @health9.State
    click_on "Update Health9"

    assert_text "Health9 was successfully updated"
    click_on "Back"
  end

  test "destroying a Health9" do
    visit health9s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Health9 was successfully destroyed"
  end
end
