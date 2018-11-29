require "application_system_test_case"

class RuralInfrastructureDevelopmentFundsTest < ApplicationSystemTestCase
  setup do
    @rural_infrastructure_development_fund = rural_infrastructure_development_funds(:one)
  end

  test "visiting the index" do
    visit rural_infrastructure_development_funds_url
    assert_selector "h1", text: "Rural Infrastructure Development Funds"
  end

  test "creating a Rural infrastructure development fund" do
    visit rural_infrastructure_development_funds_url
    click_on "New Rural Infrastructure Development Fund"

    fill_in "Disbursement", with: @rural_infrastructure_development_fund.Disbursement
    fill_in "Disbursement Percentage", with: @rural_infrastructure_development_fund.Disbursement_Percentage
    fill_in "Ridf Tranche", with: @rural_infrastructure_development_fund.RIDF_Tranche
    fill_in "Sanction", with: @rural_infrastructure_development_fund.Sanction
    click_on "Create Rural infrastructure development fund"

    assert_text "Rural infrastructure development fund was successfully created"
    click_on "Back"
  end

  test "updating a Rural infrastructure development fund" do
    visit rural_infrastructure_development_funds_url
    click_on "Edit", match: :first

    fill_in "Disbursement", with: @rural_infrastructure_development_fund.Disbursement
    fill_in "Disbursement Percentage", with: @rural_infrastructure_development_fund.Disbursement_Percentage
    fill_in "Ridf Tranche", with: @rural_infrastructure_development_fund.RIDF_Tranche
    fill_in "Sanction", with: @rural_infrastructure_development_fund.Sanction
    click_on "Update Rural infrastructure development fund"

    assert_text "Rural infrastructure development fund was successfully updated"
    click_on "Back"
  end

  test "destroying a Rural infrastructure development fund" do
    visit rural_infrastructure_development_funds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rural infrastructure development fund was successfully destroyed"
  end
end
