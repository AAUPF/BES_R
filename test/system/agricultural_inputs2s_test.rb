require "application_system_test_case"

class AgriculturalInputs2sTest < ApplicationSystemTestCase
  setup do
    @agricultural_inputs2 = agricultural_inputs2s(:one)
  end

  test "visiting the index" do
    visit agricultural_inputs2s_url
    assert_selector "h1", text: "Agricultural Inputs2s"
  end

  test "creating a Agricultural inputs2" do
    visit agricultural_inputs2s_url
    click_on "New Agricultural Inputs2"

    fill_in "Ammonium Sulphate", with: @agricultural_inputs2.Ammonium_Sulphate
    fill_in "Complex", with: @agricultural_inputs2.Complex
    fill_in "Consumption Of Fertilizer", with: @agricultural_inputs2.Consumption_of_Fertilizer
    fill_in "Dap", with: @agricultural_inputs2.DAP
    fill_in "Grand Total", with: @agricultural_inputs2.Grand_Total
    fill_in "K", with: @agricultural_inputs2.K
    fill_in "Mop", with: @agricultural_inputs2.MOP
    fill_in "N", with: @agricultural_inputs2.N
    fill_in "P", with: @agricultural_inputs2.P
    fill_in "Ssp", with: @agricultural_inputs2.SSP
    fill_in "Sub Total", with: @agricultural_inputs2.Sub_Total
    fill_in "Total Npk", with: @agricultural_inputs2.Total_NPK
    fill_in "Type Of Fertilizer", with: @agricultural_inputs2.Type_of_Fertilizer
    fill_in "Urea", with: @agricultural_inputs2.Urea
    fill_in "Year", with: @agricultural_inputs2.Year
    click_on "Create Agricultural inputs2"

    assert_text "Agricultural inputs2 was successfully created"
    click_on "Back"
  end

  test "updating a Agricultural inputs2" do
    visit agricultural_inputs2s_url
    click_on "Edit", match: :first

    fill_in "Ammonium Sulphate", with: @agricultural_inputs2.Ammonium_Sulphate
    fill_in "Complex", with: @agricultural_inputs2.Complex
    fill_in "Consumption Of Fertilizer", with: @agricultural_inputs2.Consumption_of_Fertilizer
    fill_in "Dap", with: @agricultural_inputs2.DAP
    fill_in "Grand Total", with: @agricultural_inputs2.Grand_Total
    fill_in "K", with: @agricultural_inputs2.K
    fill_in "Mop", with: @agricultural_inputs2.MOP
    fill_in "N", with: @agricultural_inputs2.N
    fill_in "P", with: @agricultural_inputs2.P
    fill_in "Ssp", with: @agricultural_inputs2.SSP
    fill_in "Sub Total", with: @agricultural_inputs2.Sub_Total
    fill_in "Total Npk", with: @agricultural_inputs2.Total_NPK
    fill_in "Type Of Fertilizer", with: @agricultural_inputs2.Type_of_Fertilizer
    fill_in "Urea", with: @agricultural_inputs2.Urea
    fill_in "Year", with: @agricultural_inputs2.Year
    click_on "Update Agricultural inputs2"

    assert_text "Agricultural inputs2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Agricultural inputs2" do
    visit agricultural_inputs2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Agricultural inputs2 was successfully destroyed"
  end
end
