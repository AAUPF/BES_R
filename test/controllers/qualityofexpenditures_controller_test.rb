require 'test_helper'

class QualityofexpendituresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @qualityofexpenditure = qualityofexpenditures(:one)
  end

  test "should get index" do
    get qualityofexpenditures_url
    assert_response :success
  end

  test "should get new" do
    get new_qualityofexpenditure_url
    assert_response :success
  end

  test "should create qualityofexpenditure" do
    assert_difference('Qualityofexpenditure.count') do
      post qualityofexpenditures_url, params: { qualityofexpenditure: { 2012-13: @qualityofexpenditure.2012-13, 2013-14: @qualityofexpenditure.2013-14, 2014-15: @qualityofexpenditure.2014-15, 2015-16: @qualityofexpenditure.2015-16, 2016-17: @qualityofexpenditure.2016-17, 2017-18_BE: @qualityofexpenditure.2017-18_BE, Sector: @qualityofexpenditure.Sector } }
    end

    assert_redirected_to qualityofexpenditure_url(Qualityofexpenditure.last)
  end

  test "should show qualityofexpenditure" do
    get qualityofexpenditure_url(@qualityofexpenditure)
    assert_response :success
  end

  test "should get edit" do
    get edit_qualityofexpenditure_url(@qualityofexpenditure)
    assert_response :success
  end

  test "should update qualityofexpenditure" do
    patch qualityofexpenditure_url(@qualityofexpenditure), params: { qualityofexpenditure: { 2012-13: @qualityofexpenditure.2012-13, 2013-14: @qualityofexpenditure.2013-14, 2014-15: @qualityofexpenditure.2014-15, 2015-16: @qualityofexpenditure.2015-16, 2016-17: @qualityofexpenditure.2016-17, 2017-18_BE: @qualityofexpenditure.2017-18_BE, Sector: @qualityofexpenditure.Sector } }
    assert_redirected_to qualityofexpenditure_url(@qualityofexpenditure)
  end

  test "should destroy qualityofexpenditure" do
    assert_difference('Qualityofexpenditure.count', -1) do
      delete qualityofexpenditure_url(@qualityofexpenditure)
    end

    assert_redirected_to qualityofexpenditures_url
  end
end
