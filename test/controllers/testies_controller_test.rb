require 'test_helper'

class TestiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @testy = testies(:one)
  end

  test "should get index" do
    get testies_url
    assert_response :success
  end

  test "should get new" do
    get new_testy_url
    assert_response :success
  end

  test "should create testy" do
    assert_difference('Testy.count') do
      post testies_url, params: { testy: { name: @testy.name, number: @testy.number } }
    end

    assert_redirected_to testy_url(Testy.last)
  end

  test "should show testy" do
    get testy_url(@testy)
    assert_response :success
  end

  test "should get edit" do
    get edit_testy_url(@testy)
    assert_response :success
  end

  test "should update testy" do
    patch testy_url(@testy), params: { testy: { name: @testy.name, number: @testy.number } }
    assert_redirected_to testy_url(@testy)
  end

  test "should destroy testy" do
    assert_difference('Testy.count', -1) do
      delete testy_url(@testy)
    end

    assert_redirected_to testies_url
  end
end
