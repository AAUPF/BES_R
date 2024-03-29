require "application_system_test_case"

class AgriculturalInputs4sTest < ApplicationSystemTestCase
  setup do
    @agricultural_inputs4 = agricultural_inputs4s(:one)
  end

  test "visiting the index" do
    visit agricultural_inputs4s_url
    assert_selector "h1", text: "Agricultural Inputs4s"
  end

  test "creating a Agricultural inputs4" do
    visit agricultural_inputs4s_url
    click_on "New Agricultural Inputs4"

    fill_in "Ammonium Sulphate", with: @agricultural_inputs4.Ammonium_Sulphate
    fill_in "Complex", with: @agricultural_inputs4.Complex
    fill_in "Dap", with: @agricultural_inputs4.DAP
    fill_in "Districts", with: @agricultural_inputs4.Districts
    fill_in "Grand Total", with: @agricultural_inputs4.Grand_Total
    fill_in "K", with: @agricultural_inputs4.K
    fill_in "Mop", with: @agricultural_inputs4.MOP
    fill_in "N", with: @agricultural_inputs4.N
    fill_in "P", with: @agricultural_inputs4.P
    fill_in "Percentage Ammonium Sulphate", with: @agricultural_inputs4.Percentage_Ammonium_Sulphate
    fill_in "Percentage Complex", with: @agricultural_inputs4.Percentage_Complex
    fill_in "Percentage Dap", with: @agricultural_inputs4.Percentage_DAP
    fill_in "Percentage Mop", with: @agricultural_inputs4.Percentage_MOP
    fill_in "Percentage Ssp", with: @agricultural_inputs4.Percentage_SSP
    fill_in "Percentage Total Npk", with: @agricultural_inputs4.Percentage_Total_NPK
    fill_in "Percentage Urea", with: @agricultural_inputs4.Percentage_Urea
    fill_in "Ssp", with: @agricultural_inputs4.SSP
    fill_in "Total", with: @agricultural_inputs4.Total
    fill_in "Total Npk", with: @agricultural_inputs4.Total_NPK
    fill_in "Urea", with: @agricultural_inputs4.Urea
    fill_in "Year", with: @agricultural_inputs4.Year
    click_on "Create Agricultural inputs4"

    assert_text "Agricultural inputs4 was successfully created"
    click_on "Back"
  end

  test "updating a Agricultural inputs4" do
    visit agricultural_inputs4s_url
    click_on "Edit", match: :first

    fill_in "Ammonium Sulphate", with: @agricultural_inputs4.Ammonium_Sulphate
    fill_in "Complex", with: @agricultural_inputs4.Complex
    fill_in "Dap", with: @agricultural_inputs4.DAP
    fill_in "Districts", with: @agricultural_inputs4.Districts
    fill_in "Grand Total", with: @agricultural_inputs4.Grand_Total
    fill_in "K", with: @agricultural_inputs4.K
    fill_in "Mop", with: @agricultural_inputs4.MOP
    fill_in "N", with: @agricultural_inputs4.N
    fill_in "P", with: @agricultural_inputs4.P
    fill_in "Percentage Ammonium Sulphate", with: @agricultural_inputs4.Percentage_Ammonium_Sulphate
    fill_in "Percentage Complex", with: @agricultural_inputs4.Percentage_Complex
    fill_in "Percentage Dap", with: @agricultural_inputs4.Percentage_DAP
    fill_in "Percentage Mop", with: @agricultural_inputs4.Percentage_MOP
    fill_in "Percentage Ssp", with: @agricultural_inputs4.Percentage_SSP
    fill_in "Percentage Total Npk", with: @agricultural_inputs4.Percentage_Total_NPK
    fill_in "Percentage Urea", with: @agricultural_inputs4.Percentage_Urea
    fill_in "Ssp", with: @agricultural_inputs4.SSP
    fill_in "Total", with: @agricultural_inputs4.Total
    fill_in "Total Npk", with: @agricultural_inputs4.Total_NPK
    fill_in "Urea", with: @agricultural_inputs4.Urea
    fill_in "Year", with: @agricultural_inputs4.Year
    click_on "Update Agricultural inputs4"

    assert_text "Agricultural inputs4 was successfully updated"
    click_on "Back"
  end

  test "destroying a Agricultural inputs4" do
    visit agricultural_inputs4s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Agricultural inputs4 was successfully destroyed"
  end
end
