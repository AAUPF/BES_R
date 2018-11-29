require "application_system_test_case"

class BankingInfrastructure1sTest < ApplicationSystemTestCase
  setup do
    @banking_infrastructure1 = banking_infrastructure1s(:one)
  end

  test "visiting the index" do
    visit banking_infrastructure1s_url
    assert_selector "h1", text: "Banking Infrastructure1s"
  end

  test "creating a Banking infrastructure1" do
    visit banking_infrastructure1s_url
    click_on "New Banking Infrastructure1"

    fill_in "Growth Rate", with: @banking_infrastructure1.Growth_Rate
    fill_in "Percentage Distribution Of Rural Branches", with: @banking_infrastructure1.Percentage_distribution_of_Rural_branches
    fill_in "Percentage Distribution Of Semiurban Branches", with: @banking_infrastructure1.Percentage_distribution_of_Semiurban_Branches
    fill_in "Percentage Distribution Of Urban Branches", with: @banking_infrastructure1.Percentage_distribution_of_Urban_branches
    fill_in "Total", with: @banking_infrastructure1.Total
    fill_in "Years End March", with: @banking_infrastructure1.Years_End_March
    click_on "Create Banking infrastructure1"

    assert_text "Banking infrastructure1 was successfully created"
    click_on "Back"
  end

  test "updating a Banking infrastructure1" do
    visit banking_infrastructure1s_url
    click_on "Edit", match: :first

    fill_in "Growth Rate", with: @banking_infrastructure1.Growth_Rate
    fill_in "Percentage Distribution Of Rural Branches", with: @banking_infrastructure1.Percentage_distribution_of_Rural_branches
    fill_in "Percentage Distribution Of Semiurban Branches", with: @banking_infrastructure1.Percentage_distribution_of_Semiurban_Branches
    fill_in "Percentage Distribution Of Urban Branches", with: @banking_infrastructure1.Percentage_distribution_of_Urban_branches
    fill_in "Total", with: @banking_infrastructure1.Total
    fill_in "Years End March", with: @banking_infrastructure1.Years_End_March
    click_on "Update Banking infrastructure1"

    assert_text "Banking infrastructure1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Banking infrastructure1" do
    visit banking_infrastructure1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Banking infrastructure1 was successfully destroyed"
  end
end
