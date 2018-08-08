require 'test_helper'

class Health13sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @health13 = health13s(:one)
  end

  test "should get index" do
    get health13s_url
    assert_response :success
  end

  test "should get new" do
    get new_health13_url
    assert_response :success
  end

  test "should create health13" do
    assert_difference('Health13.count') do
      post health13s_url, params: { health13: { No_of_Sanctioned_Posts: @health13.No_of_Sanctioned_Posts, Percentage_of_Vacant_Post: @health13.Percentage_of_Vacant_Post, Posts: @health13.Posts, Working: @health13.Working, Year: @health13.Year } }
    end

    assert_redirected_to health13_url(Health13.last)
  end

  test "should show health13" do
    get health13_url(@health13)
    assert_response :success
  end

  test "should get edit" do
    get edit_health13_url(@health13)
    assert_response :success
  end

  test "should update health13" do
    patch health13_url(@health13), params: { health13: { No_of_Sanctioned_Posts: @health13.No_of_Sanctioned_Posts, Percentage_of_Vacant_Post: @health13.Percentage_of_Vacant_Post, Posts: @health13.Posts, Working: @health13.Working, Year: @health13.Year } }
    assert_redirected_to health13_url(@health13)
  end

  test "should destroy health13" do
    assert_difference('Health13.count', -1) do
      delete health13_url(@health13)
    end

    assert_redirected_to health13s_url
  end
end
