require 'test_helper'

class Health2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @health2 = health2s(:one)
  end

  test "should get index" do
    get health2s_url
    assert_response :success
  end

  test "should get new" do
    get new_health2_url
    assert_response :success
  end

  test "should create health2" do
    assert_difference('Health2.count') do
      post health2s_url, params: { health2: { Female: @health2.Female, Male: @health2.Male, Region: @health2.Region, Total: @health2.Total, Year: @health2.Year } }
    end

    assert_redirected_to health2_url(Health2.last)
  end

  test "should show health2" do
    get health2_url(@health2)
    assert_response :success
  end

  test "should get edit" do
    get edit_health2_url(@health2)
    assert_response :success
  end

  test "should update health2" do
    patch health2_url(@health2), params: { health2: { Female: @health2.Female, Male: @health2.Male, Region: @health2.Region, Total: @health2.Total, Year: @health2.Year } }
    assert_redirected_to health2_url(@health2)
  end

  test "should destroy health2" do
    assert_difference('Health2.count', -1) do
      delete health2_url(@health2)
    end

    assert_redirected_to health2s_url
  end
end
