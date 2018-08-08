require 'test_helper'

class Health20sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @health20 = health20s(:one)
  end

  test "should get index" do
    get health20s_url
    assert_response :success
  end

  test "should get new" do
    get new_health20_url
    assert_response :success
  end

  test "should create health20" do
    assert_difference('Health20.count') do
      post health20s_url, params: { health20: { Districts: @health20.Districts, Institutional_Deliveries: @health20.Institutional_Deliveries, Year: @health20.Year } }
    end

    assert_redirected_to health20_url(Health20.last)
  end

  test "should show health20" do
    get health20_url(@health20)
    assert_response :success
  end

  test "should get edit" do
    get edit_health20_url(@health20)
    assert_response :success
  end

  test "should update health20" do
    patch health20_url(@health20), params: { health20: { Districts: @health20.Districts, Institutional_Deliveries: @health20.Institutional_Deliveries, Year: @health20.Year } }
    assert_redirected_to health20_url(@health20)
  end

  test "should destroy health20" do
    assert_difference('Health20.count', -1) do
      delete health20_url(@health20)
    end

    assert_redirected_to health20s_url
  end
end
