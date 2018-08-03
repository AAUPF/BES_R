require 'test_helper'

class Irrigation4sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @irrigation4 = irrigation4s(:one)
  end

  test "should get index" do
    get irrigation4s_url
    assert_response :success
  end

  test "should get new" do
    get new_irrigation4_url
    assert_response :success
  end

  test "should create irrigation4" do
    assert_difference('Irrigation4.count') do
      post irrigation4s_url, params: { irrigation4: { Applied_for_Registration: @irrigation4.Applied_for_Registration, Management_of_irrigation_System_Transferred: @irrigation4.Management_of_irrigation_System_Transferred, Societies_ready_for_transfer_of_system: @irrigation4.Societies_ready_for_transfer_of_system, Status: @irrigation4.Status, Total: @irrigation4.Total, Under_the_process_of_motivation: @irrigation4.Under_the_process_of_motivation } }
    end

    assert_redirected_to irrigation4_url(Irrigation4.last)
  end

  test "should show irrigation4" do
    get irrigation4_url(@irrigation4)
    assert_response :success
  end

  test "should get edit" do
    get edit_irrigation4_url(@irrigation4)
    assert_response :success
  end

  test "should update irrigation4" do
    patch irrigation4_url(@irrigation4), params: { irrigation4: { Applied_for_Registration: @irrigation4.Applied_for_Registration, Management_of_irrigation_System_Transferred: @irrigation4.Management_of_irrigation_System_Transferred, Societies_ready_for_transfer_of_system: @irrigation4.Societies_ready_for_transfer_of_system, Status: @irrigation4.Status, Total: @irrigation4.Total, Under_the_process_of_motivation: @irrigation4.Under_the_process_of_motivation } }
    assert_redirected_to irrigation4_url(@irrigation4)
  end

  test "should destroy irrigation4" do
    assert_difference('Irrigation4.count', -1) do
      delete irrigation4_url(@irrigation4)
    end

    assert_redirected_to irrigation4s_url
  end
end
