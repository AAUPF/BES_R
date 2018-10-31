require 'test_helper'

class Roads9sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @roads9 = roads9s(:one)
  end

  test "should get index" do
    get roads9s_url
    assert_response :success
  end

  test "should get new" do
    get new_roads9_url
    assert_response :success
  end

  test "should create roads9" do
    assert_difference('Roads9.count') do
      post roads9s_url, params: { roads9: { Bridge_Constructed: @roads9.Bridge_Constructed, Expenditure: @roads9.Expenditure, Name_of_the_Scheme: @roads9.Name_of_the_Scheme, Road_Constructed: @roads9.Road_Constructed } }
    end

    assert_redirected_to roads9_url(Roads9.last)
  end

  test "should show roads9" do
    get roads9_url(@roads9)
    assert_response :success
  end

  test "should get edit" do
    get edit_roads9_url(@roads9)
    assert_response :success
  end

  test "should update roads9" do
    patch roads9_url(@roads9), params: { roads9: { Bridge_Constructed: @roads9.Bridge_Constructed, Expenditure: @roads9.Expenditure, Name_of_the_Scheme: @roads9.Name_of_the_Scheme, Road_Constructed: @roads9.Road_Constructed } }
    assert_redirected_to roads9_url(@roads9)
  end

  test "should destroy roads9" do
    assert_difference('Roads9.count', -1) do
      delete roads9_url(@roads9)
    end

    assert_redirected_to roads9s_url
  end
end
