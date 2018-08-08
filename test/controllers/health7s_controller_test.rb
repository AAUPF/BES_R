require 'test_helper'

class Health7sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @health7 = health7s(:one)
  end

  test "should get index" do
    get health7s_url
    assert_response :success
  end

  test "should get new" do
    get new_health7_url
    assert_response :success
  end

  test "should create health7" do
    assert_difference('Health7.count') do
      post health7s_url, params: { health7: { Contractual_Sanctioned_Posts: @health7.Contractual_Sanctioned_Posts, Contractual_Working: @health7.Contractual_Working, Name_of_the_Post: @health7.Name_of_the_Post, Regular_Total_Sanctioned_Posts: @health7.Regular_Total_Sanctioned_Posts, Regular_Working: @health7.Regular_Working, Year: @health7.Year } }
    end

    assert_redirected_to health7_url(Health7.last)
  end

  test "should show health7" do
    get health7_url(@health7)
    assert_response :success
  end

  test "should get edit" do
    get edit_health7_url(@health7)
    assert_response :success
  end

  test "should update health7" do
    patch health7_url(@health7), params: { health7: { Contractual_Sanctioned_Posts: @health7.Contractual_Sanctioned_Posts, Contractual_Working: @health7.Contractual_Working, Name_of_the_Post: @health7.Name_of_the_Post, Regular_Total_Sanctioned_Posts: @health7.Regular_Total_Sanctioned_Posts, Regular_Working: @health7.Regular_Working, Year: @health7.Year } }
    assert_redirected_to health7_url(@health7)
  end

  test "should destroy health7" do
    assert_difference('Health7.count', -1) do
      delete health7_url(@health7)
    end

    assert_redirected_to health7s_url
  end
end
