require "application_system_test_case"

class UdpJointlyFunded12sTest < ApplicationSystemTestCase
  setup do
    @udp_jointly_funded12 = udp_jointly_funded12s(:one)
  end

  test "visiting the index" do
    visit udp_jointly_funded12s_url
    assert_selector "h1", text: "Udp Jointly Funded12s"
  end

  test "creating a Udp jointly funded12" do
    visit udp_jointly_funded12s_url
    click_on "New Udp Jointly Funded12"

    fill_in "Activities", with: @udp_jointly_funded12.Activities
    fill_in "Amount Released", with: @udp_jointly_funded12.Amount_released
    fill_in "Approved Project Cost", with: @udp_jointly_funded12.Approved_Project_Cost
    fill_in "Name Of The Project", with: @udp_jointly_funded12.Name_of_the_Project
    fill_in "Status", with: @udp_jointly_funded12.Status
    click_on "Create Udp jointly funded12"

    assert_text "Udp jointly funded12 was successfully created"
    click_on "Back"
  end

  test "updating a Udp jointly funded12" do
    visit udp_jointly_funded12s_url
    click_on "Edit", match: :first

    fill_in "Activities", with: @udp_jointly_funded12.Activities
    fill_in "Amount Released", with: @udp_jointly_funded12.Amount_released
    fill_in "Approved Project Cost", with: @udp_jointly_funded12.Approved_Project_Cost
    fill_in "Name Of The Project", with: @udp_jointly_funded12.Name_of_the_Project
    fill_in "Status", with: @udp_jointly_funded12.Status
    click_on "Update Udp jointly funded12"

    assert_text "Udp jointly funded12 was successfully updated"
    click_on "Back"
  end

  test "destroying a Udp jointly funded12" do
    visit udp_jointly_funded12s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Udp jointly funded12 was successfully destroyed"
  end
end
