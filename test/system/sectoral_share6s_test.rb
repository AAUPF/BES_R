require "application_system_test_case"

class SectoralShare6sTest < ApplicationSystemTestCase
  setup do
    @sectoral_share6 = sectoral_share6s(:one)
  end

  test "visiting the index" do
    visit sectoral_share6s_url
    assert_selector "h1", text: "Sectoral Share6s"
  end

  test "creating a Sectoral share6" do
    visit sectoral_share6s_url
    click_on "New Sectoral Share6"

    fill_in "Amount Of Societies In Loss Rs Lakh", with: @sectoral_share6.Amount_of_Societies_in_Loss_Rs_lakh
    fill_in "Amount Of Societies In Profit Rs Lakh", with: @sectoral_share6.Amount_of_Societies_in_Profit_Rs_lakh
    fill_in "Borrowings Rs Crore", with: @sectoral_share6.Borrowings_Rs_crore
    fill_in "Deposits Rs Crore", with: @sectoral_share6.Deposits_Rs_crore
    fill_in "Loans And Advances Outstanding For Agriculture Rs Crore", with: @sectoral_share6.Loans_and_Advances_Outstanding_for_Agriculture_Rs_crore
    fill_in "Loans And Advances Outstanding For Non Agriculture Rs Crore", with: @sectoral_share6.Loans_and_Advances_Outstanding_for_Non_Agriculture_Rs_crore
    fill_in "No Of Pacs", with: @sectoral_share6.No_of_PACS
    fill_in "No Of Societies In Loss", with: @sectoral_share6.No_of_Societies_in_Loss
    fill_in "No Of Societies In Profit", with: @sectoral_share6.No_of_Societies_in_Profit
    fill_in "State", with: @sectoral_share6.State
    click_on "Create Sectoral share6"

    assert_text "Sectoral share6 was successfully created"
    click_on "Back"
  end

  test "updating a Sectoral share6" do
    visit sectoral_share6s_url
    click_on "Edit", match: :first

    fill_in "Amount Of Societies In Loss Rs Lakh", with: @sectoral_share6.Amount_of_Societies_in_Loss_Rs_lakh
    fill_in "Amount Of Societies In Profit Rs Lakh", with: @sectoral_share6.Amount_of_Societies_in_Profit_Rs_lakh
    fill_in "Borrowings Rs Crore", with: @sectoral_share6.Borrowings_Rs_crore
    fill_in "Deposits Rs Crore", with: @sectoral_share6.Deposits_Rs_crore
    fill_in "Loans And Advances Outstanding For Agriculture Rs Crore", with: @sectoral_share6.Loans_and_Advances_Outstanding_for_Agriculture_Rs_crore
    fill_in "Loans And Advances Outstanding For Non Agriculture Rs Crore", with: @sectoral_share6.Loans_and_Advances_Outstanding_for_Non_Agriculture_Rs_crore
    fill_in "No Of Pacs", with: @sectoral_share6.No_of_PACS
    fill_in "No Of Societies In Loss", with: @sectoral_share6.No_of_Societies_in_Loss
    fill_in "No Of Societies In Profit", with: @sectoral_share6.No_of_Societies_in_Profit
    fill_in "State", with: @sectoral_share6.State
    click_on "Update Sectoral share6"

    assert_text "Sectoral share6 was successfully updated"
    click_on "Back"
  end

  test "destroying a Sectoral share6" do
    visit sectoral_share6s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sectoral share6 was successfully destroyed"
  end
end
