require 'test_helper'

class SectoralShare8sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sectoral_share8 = sectoral_share8s(:one)
  end

  test "should get index" do
    get sectoral_share8s_url
    assert_response :success
  end

  test "should get new" do
    get new_sectoral_share8_url
    assert_response :success
  end

  test "should create sectoral_share8" do
    assert_difference('SectoralShare8.count') do
      post sectoral_share8s_url, params: { sectoral_share8: { 2014-15: @sectoral_share8.2014-15, 2015-16: @sectoral_share8.2015-16, Branches_as_on_March_30_2016: @sectoral_share8.Branches_as_on_March_30_2016, Indicator: @sectoral_share8.Indicator, State: @sectoral_share8.State } }
    end

    assert_redirected_to sectoral_share8_url(SectoralShare8.last)
  end

  test "should show sectoral_share8" do
    get sectoral_share8_url(@sectoral_share8)
    assert_response :success
  end

  test "should get edit" do
    get edit_sectoral_share8_url(@sectoral_share8)
    assert_response :success
  end

  test "should update sectoral_share8" do
    patch sectoral_share8_url(@sectoral_share8), params: { sectoral_share8: { 2014-15: @sectoral_share8.2014-15, 2015-16: @sectoral_share8.2015-16, Branches_as_on_March_30_2016: @sectoral_share8.Branches_as_on_March_30_2016, Indicator: @sectoral_share8.Indicator, State: @sectoral_share8.State } }
    assert_redirected_to sectoral_share8_url(@sectoral_share8)
  end

  test "should destroy sectoral_share8" do
    assert_difference('SectoralShare8.count', -1) do
      delete sectoral_share8_url(@sectoral_share8)
    end

    assert_redirected_to sectoral_share8s_url
  end
end
