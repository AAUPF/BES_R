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
    fill_in "Ammonium Sulphate Colour", with: @agricultural_inputs4.Ammonium_Sulphate_Colour
    fill_in "Complex", with: @agricultural_inputs4.Complex
    fill_in "Complex Colour", with: @agricultural_inputs4.Complex_Colour
    fill_in "Dap", with: @agricultural_inputs4.DAP
    fill_in "Dap Colour", with: @agricultural_inputs4.DAP_Colour
    fill_in "Districts", with: @agricultural_inputs4.Districts
    fill_in "Grand Total", with: @agricultural_inputs4.Grand_Total
    fill_in "Grand Total Colour", with: @agricultural_inputs4.Grand_Total_Colour
    fill_in "K", with: @agricultural_inputs4.K
    fill_in "K Colour", with: @agricultural_inputs4.K_Colour
    fill_in "Mop", with: @agricultural_inputs4.MOP
    fill_in "Mop Colour", with: @agricultural_inputs4.MOP_Colour
    fill_in "N", with: @agricultural_inputs4.N
    fill_in "N Colour", with: @agricultural_inputs4.N_Colour
    fill_in "P", with: @agricultural_inputs4.P
    fill_in "P Colour", with: @agricultural_inputs4.P_Colour
    fill_in "Ssp", with: @agricultural_inputs4.SSP
    fill_in "Ssp Colour", with: @agricultural_inputs4.SSP_Colour
    fill_in "Total", with: @agricultural_inputs4.Total
    fill_in "Total Colour", with: @agricultural_inputs4.Total_Colour
    fill_in "Total Npk", with: @agricultural_inputs4.Total_NPK
    fill_in "Total Npk Colour", with: @agricultural_inputs4.Total_NPK_Colour
    fill_in "Urea", with: @agricultural_inputs4.Urea
    fill_in "Urea Colour", with: @agricultural_inputs4.Urea_Colour
    fill_in "Year", with: @agricultural_inputs4.Year
    click_on "Create Agricultural inputs4"

    assert_text "Agricultural inputs4 was successfully created"
    click_on "Back"
  end

  test "updating a Agricultural inputs4" do
    visit agricultural_inputs4s_url
    click_on "Edit", match: :first

    fill_in "Ammonium Sulphate", with: @agricultural_inputs4.Ammonium_Sulphate
    fill_in "Ammonium Sulphate Colour", with: @agricultural_inputs4.Ammonium_Sulphate_Colour
    fill_in "Complex", with: @agricultural_inputs4.Complex
    fill_in "Complex Colour", with: @agricultural_inputs4.Complex_Colour
    fill_in "Dap", with: @agricultural_inputs4.DAP
    fill_in "Dap Colour", with: @agricultural_inputs4.DAP_Colour
    fill_in "Districts", with: @agricultural_inputs4.Districts
    fill_in "Grand Total", with: @agricultural_inputs4.Grand_Total
    fill_in "Grand Total Colour", with: @agricultural_inputs4.Grand_Total_Colour
    fill_in "K", with: @agricultural_inputs4.K
    fill_in "K Colour", with: @agricultural_inputs4.K_Colour
    fill_in "Mop", with: @agricultural_inputs4.MOP
    fill_in "Mop Colour", with: @agricultural_inputs4.MOP_Colour
    fill_in "N", with: @agricultural_inputs4.N
    fill_in "N Colour", with: @agricultural_inputs4.N_Colour
    fill_in "P", with: @agricultural_inputs4.P
    fill_in "P Colour", with: @agricultural_inputs4.P_Colour
    fill_in "Ssp", with: @agricultural_inputs4.SSP
    fill_in "Ssp Colour", with: @agricultural_inputs4.SSP_Colour
    fill_in "Total", with: @agricultural_inputs4.Total
    fill_in "Total Colour", with: @agricultural_inputs4.Total_Colour
    fill_in "Total Npk", with: @agricultural_inputs4.Total_NPK
    fill_in "Total Npk Colour", with: @agricultural_inputs4.Total_NPK_Colour
    fill_in "Urea", with: @agricultural_inputs4.Urea
    fill_in "Urea Colour", with: @agricultural_inputs4.Urea_Colour
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
