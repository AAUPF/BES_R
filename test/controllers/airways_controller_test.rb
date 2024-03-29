require 'test_helper'

class AirwaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @airway = airways(:one)
  end

  test "should get index" do
    get airways_url
    assert_response :success
  end

  test "should get new" do
    get new_airway_url
    assert_response :success
  end

  test "should create airway" do
    assert_difference('Airway.count') do
      post airways_url, params: { airway: { Freight: @airway.Freight, Number_of_Aircraft_Movements: @airway.Number_of_Aircraft_Movements, Passengers: @airway.Passengers, Year: @airway.Year } }
    end

    assert_redirected_to airway_url(Airway.last)
  end

  test "should show airway" do
    get airway_url(@airway)
    assert_response :success
  end

  test "should get edit" do
    get edit_airway_url(@airway)
    assert_response :success
  end

  test "should update airway" do
    patch airway_url(@airway), params: { airway: { Freight: @airway.Freight, Number_of_Aircraft_Movements: @airway.Number_of_Aircraft_Movements, Passengers: @airway.Passengers, Year: @airway.Year } }
    assert_redirected_to airway_url(@airway)
  end

  test "should destroy airway" do
    assert_difference('Airway.count', -1) do
      delete airway_url(@airway)
    end

    assert_redirected_to airways_url
  end
end
