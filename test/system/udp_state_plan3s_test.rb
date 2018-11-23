require "application_system_test_case"

class UdpStatePlan3sTest < ApplicationSystemTestCase
  setup do
    @udp_state_plan3 = udp_state_plan3s(:one)
  end

  test "visiting the index" do
    visit udp_state_plan3s_url
    assert_selector "h1", text: "Udp State Plan3s"
  end

  test "creating a Udp state plan3" do
    visit udp_state_plan3s_url
    click_on "New Udp State Plan3"

    fill_in "2016 17", with: @udp_state_plan3.2016-17
    fill_in "2017 18", with: @udp_state_plan3.2017-18
    fill_in "2018 19", with: @udp_state_plan3.2018-19
    fill_in "2019 20", with: @udp_state_plan3.2019-20
    fill_in "Coverage", with: @udp_state_plan3.Coverage
    fill_in "Total", with: @udp_state_plan3.Total
    click_on "Create Udp state plan3"

    assert_text "Udp state plan3 was successfully created"
    click_on "Back"
  end

  test "updating a Udp state plan3" do
    visit udp_state_plan3s_url
    click_on "Edit", match: :first

    fill_in "2016 17", with: @udp_state_plan3.2016-17
    fill_in "2017 18", with: @udp_state_plan3.2017-18
    fill_in "2018 19", with: @udp_state_plan3.2018-19
    fill_in "2019 20", with: @udp_state_plan3.2019-20
    fill_in "Coverage", with: @udp_state_plan3.Coverage
    fill_in "Total", with: @udp_state_plan3.Total
    click_on "Update Udp state plan3"

    assert_text "Udp state plan3 was successfully updated"
    click_on "Back"
  end

  test "destroying a Udp state plan3" do
    visit udp_state_plan3s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Udp state plan3 was successfully destroyed"
  end
end
