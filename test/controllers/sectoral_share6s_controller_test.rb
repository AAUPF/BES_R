require 'test_helper'

class SectoralShare6sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sectoral_share6 = sectoral_share6s(:one)
  end

  test "should get index" do
    get sectoral_share6s_url
    assert_response :success
  end

  test "should get new" do
    get new_sectoral_share6_url
    assert_response :success
  end

  test "should create sectoral_share6" do
    assert_difference('SectoralShare6.count') do
      post sectoral_share6s_url, params: { sectoral_share6: { Amount_of_Societies_in_Loss_Rs_lakh: @sectoral_share6.Amount_of_Societies_in_Loss_Rs_lakh, Amount_of_Societies_in_Profit_Rs_lakh: @sectoral_share6.Amount_of_Societies_in_Profit_Rs_lakh, Borrowings_Rs_crore: @sectoral_share6.Borrowings_Rs_crore, Deposits_Rs_crore: @sectoral_share6.Deposits_Rs_crore, Loans_and_Advances_Outstanding_for_Agriculture_Rs_crore: @sectoral_share6.Loans_and_Advances_Outstanding_for_Agriculture_Rs_crore, Loans_and_Advances_Outstanding_for_Non_Agriculture_Rs_crore: @sectoral_share6.Loans_and_Advances_Outstanding_for_Non_Agriculture_Rs_crore, No_of_PACS: @sectoral_share6.No_of_PACS, No_of_Societies_in_Loss: @sectoral_share6.No_of_Societies_in_Loss, No_of_Societies_in_Profit: @sectoral_share6.No_of_Societies_in_Profit, State: @sectoral_share6.State } }
    end

    assert_redirected_to sectoral_share6_url(SectoralShare6.last)
  end

  test "should show sectoral_share6" do
    get sectoral_share6_url(@sectoral_share6)
    assert_response :success
  end

  test "should get edit" do
    get edit_sectoral_share6_url(@sectoral_share6)
    assert_response :success
  end

  test "should update sectoral_share6" do
    patch sectoral_share6_url(@sectoral_share6), params: { sectoral_share6: { Amount_of_Societies_in_Loss_Rs_lakh: @sectoral_share6.Amount_of_Societies_in_Loss_Rs_lakh, Amount_of_Societies_in_Profit_Rs_lakh: @sectoral_share6.Amount_of_Societies_in_Profit_Rs_lakh, Borrowings_Rs_crore: @sectoral_share6.Borrowings_Rs_crore, Deposits_Rs_crore: @sectoral_share6.Deposits_Rs_crore, Loans_and_Advances_Outstanding_for_Agriculture_Rs_crore: @sectoral_share6.Loans_and_Advances_Outstanding_for_Agriculture_Rs_crore, Loans_and_Advances_Outstanding_for_Non_Agriculture_Rs_crore: @sectoral_share6.Loans_and_Advances_Outstanding_for_Non_Agriculture_Rs_crore, No_of_PACS: @sectoral_share6.No_of_PACS, No_of_Societies_in_Loss: @sectoral_share6.No_of_Societies_in_Loss, No_of_Societies_in_Profit: @sectoral_share6.No_of_Societies_in_Profit, State: @sectoral_share6.State } }
    assert_redirected_to sectoral_share6_url(@sectoral_share6)
  end

  test "should destroy sectoral_share6" do
    assert_difference('SectoralShare6.count', -1) do
      delete sectoral_share6_url(@sectoral_share6)
    end

    assert_redirected_to sectoral_share6s_url
  end
end
