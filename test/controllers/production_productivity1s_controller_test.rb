require 'test_helper'

class ProductionProductivity1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @production_productivity1 = production_productivity1s(:one)
  end

  test "should get index" do
    get production_productivity1s_url
    assert_response :success
  end

  test "should get new" do
    get new_production_productivity1_url
    assert_response :success
  end

  test "should create production_productivity1" do
    assert_difference('ProductionProductivity1.count') do
      post production_productivity1s_url, params: { production_productivity1: { Aghani_Rice: @production_productivity1.Aghani_Rice, Arhar_Tur: @production_productivity1.Arhar_Tur, Autumn_Rice: @production_productivity1.Autumn_Rice, Bajra: @production_productivity1.Bajra, Barley: @production_productivity1.Barley, Bhadai_Moong: @production_productivity1.Bhadai_Moong, Castor_seed: @production_productivity1.Castor_seed, Ghagra: @production_productivity1.Ghagra, Gram: @production_productivity1.Gram, Ground_Nut: @production_productivity1.Ground_Nut, Jowar: @production_productivity1.Jowar, Jute: @production_productivity1.Jute, Kharif_Maize: @production_productivity1.Kharif_Maize, Khesari: @production_productivity1.Khesari, Kulthi: @production_productivity1.Kulthi, Lentil: @production_productivity1.Lentil, Linseed: @production_productivity1.Linseed, Mesta: @production_productivity1.Mesta, Mustard: @production_productivity1.Mustard, Other_Kharif_Pulses: @production_productivity1.Other_Kharif_Pulses, Other_Rabi_Pulses: @production_productivity1.Other_Rabi_Pulses, Pea: @production_productivity1.Pea, Rabi_Maize: @production_productivity1.Rabi_Maize, Ragi: @production_productivity1.Ragi, Safflower_Kusum: @production_productivity1.Safflower_Kusum, Sesamum: @production_productivity1.Sesamum, Small_Millets: @production_productivity1.Small_Millets, Sugarcane: @production_productivity1.Sugarcane, Summer_Maize: @production_productivity1.Summer_Maize, Summer_Moong: @production_productivity1.Summer_Moong, Summer_Rice: @production_productivity1.Summer_Rice, Sunflower: @production_productivity1.Sunflower, Total_Cereals: @production_productivity1.Total_Cereals, Total_Coarse_Cereals: @production_productivity1.Total_Coarse_Cereals, Total_Fibre_Crops: @production_productivity1.Total_Fibre_Crops, Total_Kharif_Pulses: @production_productivity1.Total_Kharif_Pulses, Total_Maize: @production_productivity1.Total_Maize, Total_Oilseeds: @production_productivity1.Total_Oilseeds, Total_Pulses: @production_productivity1.Total_Pulses, Total_Rabi_Pulses: @production_productivity1.Total_Rabi_Pulses, Total_Rice: @production_productivity1.Total_Rice, Urad: @production_productivity1.Urad, Wheat: @production_productivity1.Wheat, Year: @production_productivity1.Year } }
    end

    assert_redirected_to production_productivity1_url(ProductionProductivity1.last)
  end

  test "should show production_productivity1" do
    get production_productivity1_url(@production_productivity1)
    assert_response :success
  end

  test "should get edit" do
    get edit_production_productivity1_url(@production_productivity1)
    assert_response :success
  end

  test "should update production_productivity1" do
    patch production_productivity1_url(@production_productivity1), params: { production_productivity1: { Aghani_Rice: @production_productivity1.Aghani_Rice, Arhar_Tur: @production_productivity1.Arhar_Tur, Autumn_Rice: @production_productivity1.Autumn_Rice, Bajra: @production_productivity1.Bajra, Barley: @production_productivity1.Barley, Bhadai_Moong: @production_productivity1.Bhadai_Moong, Castor_seed: @production_productivity1.Castor_seed, Ghagra: @production_productivity1.Ghagra, Gram: @production_productivity1.Gram, Ground_Nut: @production_productivity1.Ground_Nut, Jowar: @production_productivity1.Jowar, Jute: @production_productivity1.Jute, Kharif_Maize: @production_productivity1.Kharif_Maize, Khesari: @production_productivity1.Khesari, Kulthi: @production_productivity1.Kulthi, Lentil: @production_productivity1.Lentil, Linseed: @production_productivity1.Linseed, Mesta: @production_productivity1.Mesta, Mustard: @production_productivity1.Mustard, Other_Kharif_Pulses: @production_productivity1.Other_Kharif_Pulses, Other_Rabi_Pulses: @production_productivity1.Other_Rabi_Pulses, Pea: @production_productivity1.Pea, Rabi_Maize: @production_productivity1.Rabi_Maize, Ragi: @production_productivity1.Ragi, Safflower_Kusum: @production_productivity1.Safflower_Kusum, Sesamum: @production_productivity1.Sesamum, Small_Millets: @production_productivity1.Small_Millets, Sugarcane: @production_productivity1.Sugarcane, Summer_Maize: @production_productivity1.Summer_Maize, Summer_Moong: @production_productivity1.Summer_Moong, Summer_Rice: @production_productivity1.Summer_Rice, Sunflower: @production_productivity1.Sunflower, Total_Cereals: @production_productivity1.Total_Cereals, Total_Coarse_Cereals: @production_productivity1.Total_Coarse_Cereals, Total_Fibre_Crops: @production_productivity1.Total_Fibre_Crops, Total_Kharif_Pulses: @production_productivity1.Total_Kharif_Pulses, Total_Maize: @production_productivity1.Total_Maize, Total_Oilseeds: @production_productivity1.Total_Oilseeds, Total_Pulses: @production_productivity1.Total_Pulses, Total_Rabi_Pulses: @production_productivity1.Total_Rabi_Pulses, Total_Rice: @production_productivity1.Total_Rice, Urad: @production_productivity1.Urad, Wheat: @production_productivity1.Wheat, Year: @production_productivity1.Year } }
    assert_redirected_to production_productivity1_url(@production_productivity1)
  end

  test "should destroy production_productivity1" do
    assert_difference('ProductionProductivity1.count', -1) do
      delete production_productivity1_url(@production_productivity1)
    end

    assert_redirected_to production_productivity1s_url
  end
end
