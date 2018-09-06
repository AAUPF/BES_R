require "application_system_test_case"

class TaxDepartment3sTest < ApplicationSystemTestCase
  setup do
    @tax_department3 = tax_department3s(:one)
  end

  test "visiting the index" do
    visit tax_department3s_url
    assert_selector "h1", text: "Tax Department3s"
  end

  test "creating a Tax department3" do
    visit tax_department3s_url
    click_on "New Tax Department3"

    fill_in "Collection", with: @tax_department3.Collection
    fill_in "Name Of Commodity", with: @tax_department3.Name_of_Commodity
    fill_in "Rate Of Growth", with: @tax_department3.Rate_of_Growth
    fill_in "Year", with: @tax_department3.Year
    click_on "Create Tax department3"

    assert_text "Tax department3 was successfully created"
    click_on "Back"
  end

  test "updating a Tax department3" do
    visit tax_department3s_url
    click_on "Edit", match: :first

    fill_in "Collection", with: @tax_department3.Collection
    fill_in "Name Of Commodity", with: @tax_department3.Name_of_Commodity
    fill_in "Rate Of Growth", with: @tax_department3.Rate_of_Growth
    fill_in "Year", with: @tax_department3.Year
    click_on "Update Tax department3"

    assert_text "Tax department3 was successfully updated"
    click_on "Back"
  end

  test "destroying a Tax department3" do
    visit tax_department3s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tax department3 was successfully destroyed"
  end
end
