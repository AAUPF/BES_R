require "application_system_test_case"

class WomenEmpowerment2sTest < ApplicationSystemTestCase
  setup do
    @women_empowerment2 = women_empowerment2s(:one)
  end

  test "visiting the index" do
    visit women_empowerment2s_url
    assert_selector "h1", text: "Women Empowerment2s"
  end

  test "creating a Women empowerment2" do
    visit women_empowerment2s_url
    click_on "New Women Empowerment2"

    fill_in "Sector", with: @women_empowerment2.Sector
    fill_in "Total", with: @women_empowerment2.Total
    fill_in "Total Budget", with: @women_empowerment2.Total_Budget
    fill_in "Under Category I", with: @women_empowerment2.Under_Category_I
    fill_in "Under Category Ii", with: @women_empowerment2.Under_Category_II
    fill_in "Year", with: @women_empowerment2.Year
    click_on "Create Women empowerment2"

    assert_text "Women empowerment2 was successfully created"
    click_on "Back"
  end

  test "updating a Women empowerment2" do
    visit women_empowerment2s_url
    click_on "Edit", match: :first

    fill_in "Sector", with: @women_empowerment2.Sector
    fill_in "Total", with: @women_empowerment2.Total
    fill_in "Total Budget", with: @women_empowerment2.Total_Budget
    fill_in "Under Category I", with: @women_empowerment2.Under_Category_I
    fill_in "Under Category Ii", with: @women_empowerment2.Under_Category_II
    fill_in "Year", with: @women_empowerment2.Year
    click_on "Update Women empowerment2"

    assert_text "Women empowerment2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Women empowerment2" do
    visit women_empowerment2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Women empowerment2 was successfully destroyed"
  end
end
