require "application_system_test_case"

class BankingInfrastructure4sTest < ApplicationSystemTestCase
  setup do
    @banking_infrastructure4 = banking_infrastructure4s(:one)
  end

  test "visiting the index" do
    visit banking_infrastructure4s_url
    assert_selector "h1", text: "Banking Infrastructure4s"
  end

  test "creating a Banking infrastructure4" do
    visit banking_infrastructure4s_url
    click_on "New Banking Infrastructure4"

    fill_in "Rrb Branch", with: @banking_infrastructure4.RRB_Branch
    fill_in "Rural", with: @banking_infrastructure4.Rural
    fill_in "Semi Urban", with: @banking_infrastructure4.Semi_Urban
    fill_in "Total", with: @banking_infrastructure4.Total
    fill_in "Urban", with: @banking_infrastructure4.Urban
    click_on "Create Banking infrastructure4"

    assert_text "Banking infrastructure4 was successfully created"
    click_on "Back"
  end

  test "updating a Banking infrastructure4" do
    visit banking_infrastructure4s_url
    click_on "Edit", match: :first

    fill_in "Rrb Branch", with: @banking_infrastructure4.RRB_Branch
    fill_in "Rural", with: @banking_infrastructure4.Rural
    fill_in "Semi Urban", with: @banking_infrastructure4.Semi_Urban
    fill_in "Total", with: @banking_infrastructure4.Total
    fill_in "Urban", with: @banking_infrastructure4.Urban
    click_on "Update Banking infrastructure4"

    assert_text "Banking infrastructure4 was successfully updated"
    click_on "Back"
  end

  test "destroying a Banking infrastructure4" do
    visit banking_infrastructure4s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Banking infrastructure4 was successfully destroyed"
  end
end
