require "application_system_test_case"

class BiharIndustrialInvestment2sTest < ApplicationSystemTestCase
  setup do
    @bihar_industrial_investment2 = bihar_industrial_investment2s(:one)
  end

  test "visiting the index" do
    visit bihar_industrial_investment2s_url
    assert_selector "h1", text: "Bihar Industrial Investment2s"
  end

  test "creating a Bihar industrial investment2" do
    visit bihar_industrial_investment2s_url
    click_on "New Bihar Industrial Investment2"

    fill_in "Number Of Units", with: @bihar_industrial_investment2.Number_of_Units
    fill_in "Sectors", with: @bihar_industrial_investment2.Sectors
    click_on "Create Bihar industrial investment2"

    assert_text "Bihar industrial investment2 was successfully created"
    click_on "Back"
  end

  test "updating a Bihar industrial investment2" do
    visit bihar_industrial_investment2s_url
    click_on "Edit", match: :first

    fill_in "Number Of Units", with: @bihar_industrial_investment2.Number_of_Units
    fill_in "Sectors", with: @bihar_industrial_investment2.Sectors
    click_on "Update Bihar industrial investment2"

    assert_text "Bihar industrial investment2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Bihar industrial investment2" do
    visit bihar_industrial_investment2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bihar industrial investment2 was successfully destroyed"
  end
end
