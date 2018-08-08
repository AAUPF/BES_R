require 'test_helper'

class Health19sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @health19 = health19s(:one)
  end

  test "should get index" do
    get health19s_url
    assert_response :success
  end

  test "should get new" do
    get new_health19_url
    assert_response :success
  end

  test "should create health19" do
    assert_difference('Health19.count') do
      post health19s_url, params: { health19: { Districts: @health19.Districts, Selection: @health19.Selection, Target: @health19.Target, Year: @health19.Year } }
    end

    assert_redirected_to health19_url(Health19.last)
  end

  test "should show health19" do
    get health19_url(@health19)
    assert_response :success
  end

  test "should get edit" do
    get edit_health19_url(@health19)
    assert_response :success
  end

  test "should update health19" do
    patch health19_url(@health19), params: { health19: { Districts: @health19.Districts, Selection: @health19.Selection, Target: @health19.Target, Year: @health19.Year } }
    assert_redirected_to health19_url(@health19)
  end

  test "should destroy health19" do
    assert_difference('Health19.count', -1) do
      delete health19_url(@health19)
    end

    assert_redirected_to health19s_url
  end
end
