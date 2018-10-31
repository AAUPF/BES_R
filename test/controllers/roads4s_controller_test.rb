require 'test_helper'

class Roads4sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @roads4 = roads4s(:one)
  end

  test "should get index" do
    get roads4s_url
    assert_response :success
  end

  test "should get new" do
    get new_roads4_url
    assert_response :success
  end

  test "should create roads4" do
    assert_difference('Roads4.count') do
      post roads4s_url, params: { roads4: { Paved: @roads4.Paved, Percent_of_Total: @roads4.Percent_of_Total, Percent_of_paved: @roads4.Percent_of_paved, Total: @roads4.Total, Type_of_Road: @roads4.Type_of_Road, Year: @roads4.Year } }
    end

    assert_redirected_to roads4_url(Roads4.last)
  end

  test "should show roads4" do
    get roads4_url(@roads4)
    assert_response :success
  end

  test "should get edit" do
    get edit_roads4_url(@roads4)
    assert_response :success
  end

  test "should update roads4" do
    patch roads4_url(@roads4), params: { roads4: { Paved: @roads4.Paved, Percent_of_Total: @roads4.Percent_of_Total, Percent_of_paved: @roads4.Percent_of_paved, Total: @roads4.Total, Type_of_Road: @roads4.Type_of_Road, Year: @roads4.Year } }
    assert_redirected_to roads4_url(@roads4)
  end

  test "should destroy roads4" do
    assert_difference('Roads4.count', -1) do
      delete roads4_url(@roads4)
    end

    assert_redirected_to roads4s_url
  end
end
