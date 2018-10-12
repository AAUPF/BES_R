require 'test_helper'

class SupportInstitutions4sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @support_institutions4 = support_institutions4s(:one)
  end

  test "should get index" do
    get support_institutions4s_url
    assert_response :success
  end

  test "should get new" do
    get new_support_institutions4_url
    assert_response :success
  end

  test "should create support_institutions4" do
    assert_difference('SupportInstitutions4.count') do
      post support_institutions4s_url, params: { support_institutions4: { Land_Reserved_for_Infrastructure_Administrative_Blocks_Roads_etc: @support_institutions4.Land_Reserved_for_Infrastructure_Administrative_Blocks_Roads_etc, Litigated_land: @support_institutions4.Litigated_land, Regional_Office: @support_institutions4.Regional_Office, Total_Acquired_Constructed_Sheds: @support_institutions4.Total_Acquired_Constructed_Sheds, Total_Acquired_Land: @support_institutions4.Total_Acquired_Land, Total_Allotted_Constructed_Sheds: @support_institutions4.Total_Allotted_Constructed_Sheds, Total_Allotted_Land: @support_institutions4.Total_Allotted_Land, Total_Vacant_Constructed_Sheds_Allottable: @support_institutions4.Total_Vacant_Constructed_Sheds_Allottable, Total_Vacant_Land_Allottable: @support_institutions4.Total_Vacant_Land_Allottable } }
    end

    assert_redirected_to support_institutions4_url(SupportInstitutions4.last)
  end

  test "should show support_institutions4" do
    get support_institutions4_url(@support_institutions4)
    assert_response :success
  end

  test "should get edit" do
    get edit_support_institutions4_url(@support_institutions4)
    assert_response :success
  end

  test "should update support_institutions4" do
    patch support_institutions4_url(@support_institutions4), params: { support_institutions4: { Land_Reserved_for_Infrastructure_Administrative_Blocks_Roads_etc: @support_institutions4.Land_Reserved_for_Infrastructure_Administrative_Blocks_Roads_etc, Litigated_land: @support_institutions4.Litigated_land, Regional_Office: @support_institutions4.Regional_Office, Total_Acquired_Constructed_Sheds: @support_institutions4.Total_Acquired_Constructed_Sheds, Total_Acquired_Land: @support_institutions4.Total_Acquired_Land, Total_Allotted_Constructed_Sheds: @support_institutions4.Total_Allotted_Constructed_Sheds, Total_Allotted_Land: @support_institutions4.Total_Allotted_Land, Total_Vacant_Constructed_Sheds_Allottable: @support_institutions4.Total_Vacant_Constructed_Sheds_Allottable, Total_Vacant_Land_Allottable: @support_institutions4.Total_Vacant_Land_Allottable } }
    assert_redirected_to support_institutions4_url(@support_institutions4)
  end

  test "should destroy support_institutions4" do
    assert_difference('SupportInstitutions4.count', -1) do
      delete support_institutions4_url(@support_institutions4)
    end

    assert_redirected_to support_institutions4s_url
  end
end
