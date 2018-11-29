require "application_system_test_case"

class BankingInfrastructure6sTest < ApplicationSystemTestCase
  setup do
    @banking_infrastructure6 = banking_infrastructure6s(:one)
  end

  test "visiting the index" do
    visit banking_infrastructure6s_url
    assert_selector "h1", text: "Banking Infrastructure6s"
  end

  test "creating a Banking infrastructure6" do
    visit banking_infrastructure6s_url
    click_on "New Banking Infrastructure6"

    fill_in "Clerks", with: @banking_infrastructure6.Clerks
    fill_in "Number Of Female Employees", with: @banking_infrastructure6.Number_of_Female_Employees
    fill_in "Officers", with: @banking_infrastructure6.Officers
    fill_in "Percentage Of Clerks", with: @banking_infrastructure6.Percentage_of_Clerks
    fill_in "Percentage Of Female Employees", with: @banking_infrastructure6.Percentage_of_Female_Employees
    fill_in "Percentage Of Officers", with: @banking_infrastructure6.Percentage_of_Officers
    fill_in "Percentage Of Sub Ordinates", with: @banking_infrastructure6.Percentage_of_Sub_ordinates
    fill_in "Shelters Sanctioned Planned", with: @banking_infrastructure6.Shelters_Sanctioned_Planned
    fill_in "Sub Ordinates", with: @banking_infrastructure6.Sub_ordinates
    fill_in "Total", with: @banking_infrastructure6.Total
    fill_in "Total Percentage", with: @banking_infrastructure6.Total_Percentage
    click_on "Create Banking infrastructure6"

    assert_text "Banking infrastructure6 was successfully created"
    click_on "Back"
  end

  test "updating a Banking infrastructure6" do
    visit banking_infrastructure6s_url
    click_on "Edit", match: :first

    fill_in "Clerks", with: @banking_infrastructure6.Clerks
    fill_in "Number Of Female Employees", with: @banking_infrastructure6.Number_of_Female_Employees
    fill_in "Officers", with: @banking_infrastructure6.Officers
    fill_in "Percentage Of Clerks", with: @banking_infrastructure6.Percentage_of_Clerks
    fill_in "Percentage Of Female Employees", with: @banking_infrastructure6.Percentage_of_Female_Employees
    fill_in "Percentage Of Officers", with: @banking_infrastructure6.Percentage_of_Officers
    fill_in "Percentage Of Sub Ordinates", with: @banking_infrastructure6.Percentage_of_Sub_ordinates
    fill_in "Shelters Sanctioned Planned", with: @banking_infrastructure6.Shelters_Sanctioned_Planned
    fill_in "Sub Ordinates", with: @banking_infrastructure6.Sub_ordinates
    fill_in "Total", with: @banking_infrastructure6.Total
    fill_in "Total Percentage", with: @banking_infrastructure6.Total_Percentage
    click_on "Update Banking infrastructure6"

    assert_text "Banking infrastructure6 was successfully updated"
    click_on "Back"
  end

  test "destroying a Banking infrastructure6" do
    visit banking_infrastructure6s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Banking infrastructure6 was successfully destroyed"
  end
end
