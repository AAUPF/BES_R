require "application_system_test_case"

class AgriculturalInputs5sTest < ApplicationSystemTestCase
  setup do
    @agricultural_inputs5 = agricultural_inputs5s(:one)
  end

  test "visiting the index" do
    visit agricultural_inputs5s_url
    assert_selector "h1", text: "Agricultural Inputs5s"
  end

  test "creating a Agricultural inputs5" do
    visit agricultural_inputs5s_url
    click_on "New Agricultural Inputs5"

    fill_in "Ammonium Sulphate", with: @agricultural_inputs5.Ammonium_Sulphate
    fill_in "Complex", with: @agricultural_inputs5.Complex
    fill_in "Dap", with: @agricultural_inputs5.DAP
    fill_in "Districts", with: @agricultural_inputs5.Districts
    fill_in "Grand Total", with: @agricultural_inputs5.Grand_Total
    fill_in "K", with: @agricultural_inputs5.K
    fill_in "Mop", with: @agricultural_inputs5.MOP
    fill_in "N", with: @agricultural_inputs5.N
    fill_in "P", with: @agricultural_inputs5.P
    fill_in "Ssp", with: @agricultural_inputs5.SSP
    fill_in "Total", with: @agricultural_inputs5.Total
    fill_in "Total Npk", with: @agricultural_inputs5.Total_NPK
    fill_in "Urea", with: @agricultural_inputs5.Urea
    click_on "Create Agricultural inputs5"

    assert_text "Agricultural inputs5 was successfully created"
    click_on "Back"
  end

  test "updating a Agricultural inputs5" do
    visit agricultural_inputs5s_url
    click_on "Edit", match: :first

    fill_in "Ammonium Sulphate", with: @agricultural_inputs5.Ammonium_Sulphate
    fill_in "Complex", with: @agricultural_inputs5.Complex
    fill_in "Dap", with: @agricultural_inputs5.DAP
    fill_in "Districts", with: @agricultural_inputs5.Districts
    fill_in "Grand Total", with: @agricultural_inputs5.Grand_Total
    fill_in "K", with: @agricultural_inputs5.K
    fill_in "Mop", with: @agricultural_inputs5.MOP
    fill_in "N", with: @agricultural_inputs5.N
    fill_in "P", with: @agricultural_inputs5.P
    fill_in "Ssp", with: @agricultural_inputs5.SSP
    fill_in "Total", with: @agricultural_inputs5.Total
    fill_in "Total Npk", with: @agricultural_inputs5.Total_NPK
    fill_in "Urea", with: @agricultural_inputs5.Urea
    click_on "Update Agricultural inputs5"

    assert_text "Agricultural inputs5 was successfully updated"
    click_on "Back"
  end

  test "destroying a Agricultural inputs5" do
    visit agricultural_inputs5s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Agricultural inputs5 was successfully destroyed"
  end
end
