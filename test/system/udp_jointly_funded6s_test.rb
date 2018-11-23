require "application_system_test_case"

class UdpJointlyFunded6sTest < ApplicationSystemTestCase
  setup do
    @udp_jointly_funded6 = udp_jointly_funded6s(:one)
  end

  test "visiting the index" do
    visit udp_jointly_funded6s_url
    assert_selector "h1", text: "Udp Jointly Funded6s"
  end

  test "creating a Udp jointly funded6" do
    visit udp_jointly_funded6s_url
    click_on "New Udp Jointly Funded6"

    fill_in "Day Nulm", with: @udp_jointly_funded6.DAY_NULM
    fill_in "State Plan Head Nagrik Suvidha", with: @udp_jointly_funded6.State_Plan_Head_Nagrik_Suvidha
    fill_in "Total", with: @udp_jointly_funded6.Total
    fill_in "Year", with: @udp_jointly_funded6.Year
    click_on "Create Udp jointly funded6"

    assert_text "Udp jointly funded6 was successfully created"
    click_on "Back"
  end

  test "updating a Udp jointly funded6" do
    visit udp_jointly_funded6s_url
    click_on "Edit", match: :first

    fill_in "Day Nulm", with: @udp_jointly_funded6.DAY_NULM
    fill_in "State Plan Head Nagrik Suvidha", with: @udp_jointly_funded6.State_Plan_Head_Nagrik_Suvidha
    fill_in "Total", with: @udp_jointly_funded6.Total
    fill_in "Year", with: @udp_jointly_funded6.Year
    click_on "Update Udp jointly funded6"

    assert_text "Udp jointly funded6 was successfully updated"
    click_on "Back"
  end

  test "destroying a Udp jointly funded6" do
    visit udp_jointly_funded6s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Udp jointly funded6 was successfully destroyed"
  end
end
