require "application_system_test_case"

class BankingInfrastructure2sTest < ApplicationSystemTestCase
  setup do
    @banking_infrastructure2 = banking_infrastructure2s(:one)
  end

  test "visiting the index" do
    visit banking_infrastructure2s_url
    assert_selector "h1", text: "Banking Infrastructure2s"
  end

  test "creating a Banking infrastructure2" do
    visit banking_infrastructure2s_url
    click_on "New Banking Infrastructure2"

    fill_in "Number Of Branches", with: @banking_infrastructure2.Number_of_Branches
    fill_in "Percentage Share In All India Branches", with: @banking_infrastructure2.Percentage_share_in_all_India_branches
    fill_in "Percentage Share In All India Population", with: @banking_infrastructure2.Percentage_share_in_all_India_population
    fill_in "States", with: @banking_infrastructure2.States
    click_on "Create Banking infrastructure2"

    assert_text "Banking infrastructure2 was successfully created"
    click_on "Back"
  end

  test "updating a Banking infrastructure2" do
    visit banking_infrastructure2s_url
    click_on "Edit", match: :first

    fill_in "Number Of Branches", with: @banking_infrastructure2.Number_of_Branches
    fill_in "Percentage Share In All India Branches", with: @banking_infrastructure2.Percentage_share_in_all_India_branches
    fill_in "Percentage Share In All India Population", with: @banking_infrastructure2.Percentage_share_in_all_India_population
    fill_in "States", with: @banking_infrastructure2.States
    click_on "Update Banking infrastructure2"

    assert_text "Banking infrastructure2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Banking infrastructure2" do
    visit banking_infrastructure2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Banking infrastructure2 was successfully destroyed"
  end
end
