require 'test_helper'

class Health11sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @health11 = health11s(:one)
  end

  test "should get index" do
    get health11s_url
    assert_response :success
  end

  test "should get new" do
    get new_health11_url
    assert_response :success
  end

  test "should create health11" do
    assert_difference('Health11.count') do
      post health11s_url, params: { health11: { Diseases: @health11.Diseases, Number_of_Patients: @health11.Number_of_Patients, Year: @health11.Year } }
    end

    assert_redirected_to health11_url(Health11.last)
  end

  test "should show health11" do
    get health11_url(@health11)
    assert_response :success
  end

  test "should get edit" do
    get edit_health11_url(@health11)
    assert_response :success
  end

  test "should update health11" do
    patch health11_url(@health11), params: { health11: { Diseases: @health11.Diseases, Number_of_Patients: @health11.Number_of_Patients, Year: @health11.Year } }
    assert_redirected_to health11_url(@health11)
  end

  test "should destroy health11" do
    assert_difference('Health11.count', -1) do
      delete health11_url(@health11)
    end

    assert_redirected_to health11s_url
  end
end
