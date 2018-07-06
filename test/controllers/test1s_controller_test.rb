require 'test_helper'

class Test1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @test1 = test1s(:one)
  end

  test "should get index" do
    get test1s_url
    assert_response :success
  end

  test "should get new" do
    get new_test1_url
    assert_response :success
  end

  test "should create test1" do
    assert_difference('Test1.count') do
      post test1s_url, params: { test1: { name: @test1.name, title: @test1.title } }
    end

    assert_redirected_to test1_url(Test1.last)
  end

  test "should show test1" do
    get test1_url(@test1)
    assert_response :success
  end

  test "should get edit" do
    get edit_test1_url(@test1)
    assert_response :success
  end

  test "should update test1" do
    patch test1_url(@test1), params: { test1: { name: @test1.name, title: @test1.title } }
    assert_redirected_to test1_url(@test1)
  end

  test "should destroy test1" do
    assert_difference('Test1.count', -1) do
      delete test1_url(@test1)
    end

    assert_redirected_to test1s_url
  end
end
