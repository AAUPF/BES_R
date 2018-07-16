require 'test_helper'

class ProductionProductivity2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @production_productivity2 = production_productivity2s(:one)
  end

  test "should get index" do
    get production_productivity2s_url
    assert_response :success
  end

  test "should get new" do
    get new_production_productivity2_url
    assert_response :success
  end

  test "should create production_productivity2" do
    assert_difference('ProductionProductivity2.count') do
      post production_productivity2s_url, params: { production_productivity2: { Aghani_Rice: @production_productivity2.Aghani_Rice, Arhar_Tur: @production_productivity2.Arhar_Tur, Autumn_Rice: @production_productivity2.Autumn_Rice, Bajra: @production_productivity2.Bajra, Barley: @production_productivity2.Barley, Bhadai_Moong: @production_productivity2.Bhadai_Moong, Castor_seed: @production_productivity2.Castor_seed, Ghagra: @production_productivity2.Ghagra, Gram: @production_productivity2.Gram, Ground_Nut: @production_productivity2.Ground_Nut, Jowar: @production_productivity2.Jowar, Jute: @production_productivity2.Jute, Kharif_Maize: @production_productivity2.Kharif_Maize, Khesari: @production_productivity2.Khesari, Kulthi: @production_productivity2.Kulthi, Lentil: @production_productivity2.Lentil, Linseed: @production_productivity2.Linseed, Mesta: @production_productivity2.Mesta, Mustard: @production_productivity2.Mustard, Other_Kharif_Pulses: @production_productivity2.Other_Kharif_Pulses, Other_Rabi_Pulses: @production_productivity2.Other_Rabi_Pulses, Pea: @production_productivity2.Pea, Rabi_Maize: @production_productivity2.Rabi_Maize, Ragi: @production_productivity2.Ragi, Safflower_Kusum: @production_productivity2.Safflower_Kusum, Sesamum: @production_productivity2.Sesamum, Small_Millets: @production_productivity2.Small_Millets, Sugarcane: @production_productivity2.Sugarcane, Summer_Maize: @production_productivity2.Summer_Maize, Summer_Moong: @production_productivity2.Summer_Moong, Summer_Rice: @production_productivity2.Summer_Rice, Sunflower: @production_productivity2.Sunflower, Total_Cereals: @production_productivity2.Total_Cereals, Total_Coarse_Cereals: @production_productivity2.Total_Coarse_Cereals, Total_Fibre_Crops: @production_productivity2.Total_Fibre_Crops, Total_Kharif_Pulses: @production_productivity2.Total_Kharif_Pulses, Total_Maize: @production_productivity2.Total_Maize, Total_Oilseeds: @production_productivity2.Total_Oilseeds, Total_Pulses: @production_productivity2.Total_Pulses, Total_Rabi_Pulses: @production_productivity2.Total_Rabi_Pulses, Total_Rice: @production_productivity2.Total_Rice, Urad: @production_productivity2.Urad, Wheat: @production_productivity2.Wheat, Year: @production_productivity2.Year } }
    end

    assert_redirected_to production_productivity2_url(ProductionProductivity2.last)
  end

  test "should show production_productivity2" do
    get production_productivity2_url(@production_productivity2)
    assert_response :success
  end

  test "should get edit" do
    get edit_production_productivity2_url(@production_productivity2)
    assert_response :success
  end

  test "should update production_productivity2" do
    patch production_productivity2_url(@production_productivity2), params: { production_productivity2: { Aghani_Rice: @production_productivity2.Aghani_Rice, Arhar_Tur: @production_productivity2.Arhar_Tur, Autumn_Rice: @production_productivity2.Autumn_Rice, Bajra: @production_productivity2.Bajra, Barley: @production_productivity2.Barley, Bhadai_Moong: @production_productivity2.Bhadai_Moong, Castor_seed: @production_productivity2.Castor_seed, Ghagra: @production_productivity2.Ghagra, Gram: @production_productivity2.Gram, Ground_Nut: @production_productivity2.Ground_Nut, Jowar: @production_productivity2.Jowar, Jute: @production_productivity2.Jute, Kharif_Maize: @production_productivity2.Kharif_Maize, Khesari: @production_productivity2.Khesari, Kulthi: @production_productivity2.Kulthi, Lentil: @production_productivity2.Lentil, Linseed: @production_productivity2.Linseed, Mesta: @production_productivity2.Mesta, Mustard: @production_productivity2.Mustard, Other_Kharif_Pulses: @production_productivity2.Other_Kharif_Pulses, Other_Rabi_Pulses: @production_productivity2.Other_Rabi_Pulses, Pea: @production_productivity2.Pea, Rabi_Maize: @production_productivity2.Rabi_Maize, Ragi: @production_productivity2.Ragi, Safflower_Kusum: @production_productivity2.Safflower_Kusum, Sesamum: @production_productivity2.Sesamum, Small_Millets: @production_productivity2.Small_Millets, Sugarcane: @production_productivity2.Sugarcane, Summer_Maize: @production_productivity2.Summer_Maize, Summer_Moong: @production_productivity2.Summer_Moong, Summer_Rice: @production_productivity2.Summer_Rice, Sunflower: @production_productivity2.Sunflower, Total_Cereals: @production_productivity2.Total_Cereals, Total_Coarse_Cereals: @production_productivity2.Total_Coarse_Cereals, Total_Fibre_Crops: @production_productivity2.Total_Fibre_Crops, Total_Kharif_Pulses: @production_productivity2.Total_Kharif_Pulses, Total_Maize: @production_productivity2.Total_Maize, Total_Oilseeds: @production_productivity2.Total_Oilseeds, Total_Pulses: @production_productivity2.Total_Pulses, Total_Rabi_Pulses: @production_productivity2.Total_Rabi_Pulses, Total_Rice: @production_productivity2.Total_Rice, Urad: @production_productivity2.Urad, Wheat: @production_productivity2.Wheat, Year: @production_productivity2.Year } }
    assert_redirected_to production_productivity2_url(@production_productivity2)
  end

  test "should destroy production_productivity2" do
    assert_difference('ProductionProductivity2.count', -1) do
      delete production_productivity2_url(@production_productivity2)
    end

    assert_redirected_to production_productivity2s_url
  end
end
