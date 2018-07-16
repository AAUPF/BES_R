require "application_system_test_case"

class ProductionProductivity1sTest < ApplicationSystemTestCase
  setup do
    @production_productivity1 = production_productivity1s(:one)
  end

  test "visiting the index" do
    visit production_productivity1s_url
    assert_selector "h1", text: "Production Productivity1s"
  end

  test "creating a Production productivity1" do
    visit production_productivity1s_url
    click_on "New Production Productivity1"

    fill_in "Aghani Rice", with: @production_productivity1.Aghani_Rice
    fill_in "Arhar Tur", with: @production_productivity1.Arhar_Tur
    fill_in "Autumn Rice", with: @production_productivity1.Autumn_Rice
    fill_in "Bajra", with: @production_productivity1.Bajra
    fill_in "Barley", with: @production_productivity1.Barley
    fill_in "Bhadai Moong", with: @production_productivity1.Bhadai_Moong
    fill_in "Castor Seed", with: @production_productivity1.Castor_seed
    fill_in "Ghagra", with: @production_productivity1.Ghagra
    fill_in "Gram", with: @production_productivity1.Gram
    fill_in "Ground Nut", with: @production_productivity1.Ground_Nut
    fill_in "Jowar", with: @production_productivity1.Jowar
    fill_in "Jute", with: @production_productivity1.Jute
    fill_in "Kharif Maize", with: @production_productivity1.Kharif_Maize
    fill_in "Khesari", with: @production_productivity1.Khesari
    fill_in "Kulthi", with: @production_productivity1.Kulthi
    fill_in "Lentil", with: @production_productivity1.Lentil
    fill_in "Linseed", with: @production_productivity1.Linseed
    fill_in "Mesta", with: @production_productivity1.Mesta
    fill_in "Mustard", with: @production_productivity1.Mustard
    fill_in "Other Kharif Pulses", with: @production_productivity1.Other_Kharif_Pulses
    fill_in "Other Rabi Pulses", with: @production_productivity1.Other_Rabi_Pulses
    fill_in "Pea", with: @production_productivity1.Pea
    fill_in "Rabi Maize", with: @production_productivity1.Rabi_Maize
    fill_in "Ragi", with: @production_productivity1.Ragi
    fill_in "Safflower Kusum", with: @production_productivity1.Safflower_Kusum
    fill_in "Sesamum", with: @production_productivity1.Sesamum
    fill_in "Small Millets", with: @production_productivity1.Small_Millets
    fill_in "Sugarcane", with: @production_productivity1.Sugarcane
    fill_in "Summer Maize", with: @production_productivity1.Summer_Maize
    fill_in "Summer Moong", with: @production_productivity1.Summer_Moong
    fill_in "Summer Rice", with: @production_productivity1.Summer_Rice
    fill_in "Sunflower", with: @production_productivity1.Sunflower
    fill_in "Total Cereals", with: @production_productivity1.Total_Cereals
    fill_in "Total Coarse Cereals", with: @production_productivity1.Total_Coarse_Cereals
    fill_in "Total Fibre Crops", with: @production_productivity1.Total_Fibre_Crops
    fill_in "Total Kharif Pulses", with: @production_productivity1.Total_Kharif_Pulses
    fill_in "Total Maize", with: @production_productivity1.Total_Maize
    fill_in "Total Oilseeds", with: @production_productivity1.Total_Oilseeds
    fill_in "Total Pulses", with: @production_productivity1.Total_Pulses
    fill_in "Total Rabi Pulses", with: @production_productivity1.Total_Rabi_Pulses
    fill_in "Total Rice", with: @production_productivity1.Total_Rice
    fill_in "Urad", with: @production_productivity1.Urad
    fill_in "Wheat", with: @production_productivity1.Wheat
    fill_in "Year", with: @production_productivity1.Year
    click_on "Create Production productivity1"

    assert_text "Production productivity1 was successfully created"
    click_on "Back"
  end

  test "updating a Production productivity1" do
    visit production_productivity1s_url
    click_on "Edit", match: :first

    fill_in "Aghani Rice", with: @production_productivity1.Aghani_Rice
    fill_in "Arhar Tur", with: @production_productivity1.Arhar_Tur
    fill_in "Autumn Rice", with: @production_productivity1.Autumn_Rice
    fill_in "Bajra", with: @production_productivity1.Bajra
    fill_in "Barley", with: @production_productivity1.Barley
    fill_in "Bhadai Moong", with: @production_productivity1.Bhadai_Moong
    fill_in "Castor Seed", with: @production_productivity1.Castor_seed
    fill_in "Ghagra", with: @production_productivity1.Ghagra
    fill_in "Gram", with: @production_productivity1.Gram
    fill_in "Ground Nut", with: @production_productivity1.Ground_Nut
    fill_in "Jowar", with: @production_productivity1.Jowar
    fill_in "Jute", with: @production_productivity1.Jute
    fill_in "Kharif Maize", with: @production_productivity1.Kharif_Maize
    fill_in "Khesari", with: @production_productivity1.Khesari
    fill_in "Kulthi", with: @production_productivity1.Kulthi
    fill_in "Lentil", with: @production_productivity1.Lentil
    fill_in "Linseed", with: @production_productivity1.Linseed
    fill_in "Mesta", with: @production_productivity1.Mesta
    fill_in "Mustard", with: @production_productivity1.Mustard
    fill_in "Other Kharif Pulses", with: @production_productivity1.Other_Kharif_Pulses
    fill_in "Other Rabi Pulses", with: @production_productivity1.Other_Rabi_Pulses
    fill_in "Pea", with: @production_productivity1.Pea
    fill_in "Rabi Maize", with: @production_productivity1.Rabi_Maize
    fill_in "Ragi", with: @production_productivity1.Ragi
    fill_in "Safflower Kusum", with: @production_productivity1.Safflower_Kusum
    fill_in "Sesamum", with: @production_productivity1.Sesamum
    fill_in "Small Millets", with: @production_productivity1.Small_Millets
    fill_in "Sugarcane", with: @production_productivity1.Sugarcane
    fill_in "Summer Maize", with: @production_productivity1.Summer_Maize
    fill_in "Summer Moong", with: @production_productivity1.Summer_Moong
    fill_in "Summer Rice", with: @production_productivity1.Summer_Rice
    fill_in "Sunflower", with: @production_productivity1.Sunflower
    fill_in "Total Cereals", with: @production_productivity1.Total_Cereals
    fill_in "Total Coarse Cereals", with: @production_productivity1.Total_Coarse_Cereals
    fill_in "Total Fibre Crops", with: @production_productivity1.Total_Fibre_Crops
    fill_in "Total Kharif Pulses", with: @production_productivity1.Total_Kharif_Pulses
    fill_in "Total Maize", with: @production_productivity1.Total_Maize
    fill_in "Total Oilseeds", with: @production_productivity1.Total_Oilseeds
    fill_in "Total Pulses", with: @production_productivity1.Total_Pulses
    fill_in "Total Rabi Pulses", with: @production_productivity1.Total_Rabi_Pulses
    fill_in "Total Rice", with: @production_productivity1.Total_Rice
    fill_in "Urad", with: @production_productivity1.Urad
    fill_in "Wheat", with: @production_productivity1.Wheat
    fill_in "Year", with: @production_productivity1.Year
    click_on "Update Production productivity1"

    assert_text "Production productivity1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Production productivity1" do
    visit production_productivity1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Production productivity1 was successfully destroyed"
  end
end
