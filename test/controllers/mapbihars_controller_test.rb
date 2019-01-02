require 'test_helper'

class MapbiharsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mapbihar = mapbihars(:one)
  end

  test "should get index" do
    get mapbihars_url
    assert_response :success
  end

  test "should get new" do
    get new_mapbihar_url
    assert_response :success
  end

  test "should create mapbihar" do
    assert_difference('Mapbihar.count') do
      post mapbihars_url, params: { mapbihar: { Districts: @mapbihar.Districts, indicator: @mapbihar.indicator } }
    end

    assert_redirected_to mapbihar_url(Mapbihar.last)
  end

  test "should show mapbihar" do
    get mapbihar_url(@mapbihar)
    assert_response :success
  end

  test "should get edit" do
    get edit_mapbihar_url(@mapbihar)
    assert_response :success
  end

  test "should update mapbihar" do
    patch mapbihar_url(@mapbihar), params: { mapbihar: { Districts: @mapbihar.Districts, indicator: @mapbihar.indicator } }
    assert_redirected_to mapbihar_url(@mapbihar)
  end

  test "should destroy mapbihar" do
    assert_difference('Mapbihar.count', -1) do
      delete mapbihar_url(@mapbihar)
    end

    assert_redirected_to mapbihars_url
  end
end
