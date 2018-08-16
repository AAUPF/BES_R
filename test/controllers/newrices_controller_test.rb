require 'test_helper'

class NewricesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @newrice = newrices(:one)
  end

  test "should get index" do
    get newrices_url
    assert_response :success
  end

  test "should get new" do
    get new_newrice_url
    assert_response :success
  end

  test "should create newrice" do
    assert_difference('Newrice.count') do
      post newrices_url, params: { newrice: { Area: @newrice.Area, Districts: @newrice.Districts, Percentage_Area: @newrice.Percentage_Area, Percentage_Production: @newrice.Percentage_Production, Production: @newrice.Production, Productivity: @newrice.Productivity, Year: @newrice.Year } }
    end

    assert_redirected_to newrice_url(Newrice.last)
  end

  test "should show newrice" do
    get newrice_url(@newrice)
    assert_response :success
  end

  test "should get edit" do
    get edit_newrice_url(@newrice)
    assert_response :success
  end

  test "should update newrice" do
    patch newrice_url(@newrice), params: { newrice: { Area: @newrice.Area, Districts: @newrice.Districts, Percentage_Area: @newrice.Percentage_Area, Percentage_Production: @newrice.Percentage_Production, Production: @newrice.Production, Productivity: @newrice.Productivity, Year: @newrice.Year } }
    assert_redirected_to newrice_url(@newrice)
  end

  test "should destroy newrice" do
    assert_difference('Newrice.count', -1) do
      delete newrice_url(@newrice)
    end

    assert_redirected_to newrices_url
  end
end
