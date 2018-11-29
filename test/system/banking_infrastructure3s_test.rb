require "application_system_test_case"

class BankingInfrastructure3sTest < ApplicationSystemTestCase
  setup do
    @banking_infrastructure3 = banking_infrastructure3s(:one)
  end

  test "visiting the index" do
    visit banking_infrastructure3s_url
    assert_selector "h1", text: "Banking Infrastructure3s"
  end

  test "creating a Banking infrastructure3" do
    visit banking_infrastructure3s_url
    click_on "New Banking Infrastructure3"

    fill_in "District Central Cooperative Banks", with: @banking_infrastructure3.District_Central_Cooperative_Banks
    fill_in "State", with: @banking_infrastructure3.State
    fill_in "State Cooperative Banks", with: @banking_infrastructure3.State_Cooperative_Banks
    fill_in "Total", with: @banking_infrastructure3.Total
    fill_in "Year", with: @banking_infrastructure3.Year
    click_on "Create Banking infrastructure3"

    assert_text "Banking infrastructure3 was successfully created"
    click_on "Back"
  end

  test "updating a Banking infrastructure3" do
    visit banking_infrastructure3s_url
    click_on "Edit", match: :first

    fill_in "District Central Cooperative Banks", with: @banking_infrastructure3.District_Central_Cooperative_Banks
    fill_in "State", with: @banking_infrastructure3.State
    fill_in "State Cooperative Banks", with: @banking_infrastructure3.State_Cooperative_Banks
    fill_in "Total", with: @banking_infrastructure3.Total
    fill_in "Year", with: @banking_infrastructure3.Year
    click_on "Update Banking infrastructure3"

    assert_text "Banking infrastructure3 was successfully updated"
    click_on "Back"
  end

  test "destroying a Banking infrastructure3" do
    visit banking_infrastructure3s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Banking infrastructure3 was successfully destroyed"
  end
end
