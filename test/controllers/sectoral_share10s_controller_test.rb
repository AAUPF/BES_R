require 'test_helper'

class SectoralShare10sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sectoral_share10 = sectoral_share10s(:one)
  end

  test "should get index" do
    get sectoral_share10s_url
    assert_response :success
  end

  test "should get new" do
    get new_sectoral_share10_url
    assert_response :success
  end

  test "should create sectoral_share10" do
    assert_difference('SectoralShare10.count') do
      post sectoral_share10s_url, params: { sectoral_share10: { 2007-08: @sectoral_share10.2007-08, 2008-09: @sectoral_share10.2008-09, 2009-10: @sectoral_share10.2009-10, 2010-11: @sectoral_share10.2010-11, 2011-12: @sectoral_share10.2011-12, 2012-13: @sectoral_share10.2012-13, 2013-14: @sectoral_share10.2013-14, 2014-15: @sectoral_share10.2014-15, 2015-16: @sectoral_share10.2015-16, 2016-17: @sectoral_share10.2016-17, Districts: @sectoral_share10.Districts } }
    end

    assert_redirected_to sectoral_share10_url(SectoralShare10.last)
  end

  test "should show sectoral_share10" do
    get sectoral_share10_url(@sectoral_share10)
    assert_response :success
  end

  test "should get edit" do
    get edit_sectoral_share10_url(@sectoral_share10)
    assert_response :success
  end

  test "should update sectoral_share10" do
    patch sectoral_share10_url(@sectoral_share10), params: { sectoral_share10: { 2007-08: @sectoral_share10.2007-08, 2008-09: @sectoral_share10.2008-09, 2009-10: @sectoral_share10.2009-10, 2010-11: @sectoral_share10.2010-11, 2011-12: @sectoral_share10.2011-12, 2012-13: @sectoral_share10.2012-13, 2013-14: @sectoral_share10.2013-14, 2014-15: @sectoral_share10.2014-15, 2015-16: @sectoral_share10.2015-16, 2016-17: @sectoral_share10.2016-17, Districts: @sectoral_share10.Districts } }
    assert_redirected_to sectoral_share10_url(@sectoral_share10)
  end

  test "should destroy sectoral_share10" do
    assert_difference('SectoralShare10.count', -1) do
      delete sectoral_share10_url(@sectoral_share10)
    end

    assert_redirected_to sectoral_share10s_url
  end
end
