require "application_system_test_case"

class UdpJointlyFunded3sTest < ApplicationSystemTestCase
  setup do
    @udp_jointly_funded3 = udp_jointly_funded3s(:one)
  end

  test "visiting the index" do
    visit udp_jointly_funded3s_url
    assert_selector "h1", text: "Udp Jointly Funded3s"
  end

  test "creating a Udp jointly funded3" do
    visit udp_jointly_funded3s_url
    click_on "New Udp Jointly Funded3"

    fill_in "Annual Target", with: @udp_jointly_funded3.Annual_Target
    fill_in "Category", with: @udp_jointly_funded3.Category
    fill_in "Number Of Persons Completed Training", with: @udp_jointly_funded3.Number_of_Persons_Completed_Training
    fill_in "Number Of Persons Undergoing Training", with: @udp_jointly_funded3.Number_of_Persons_Undergoing_Training
    click_on "Create Udp jointly funded3"

    assert_text "Udp jointly funded3 was successfully created"
    click_on "Back"
  end

  test "updating a Udp jointly funded3" do
    visit udp_jointly_funded3s_url
    click_on "Edit", match: :first

    fill_in "Annual Target", with: @udp_jointly_funded3.Annual_Target
    fill_in "Category", with: @udp_jointly_funded3.Category
    fill_in "Number Of Persons Completed Training", with: @udp_jointly_funded3.Number_of_Persons_Completed_Training
    fill_in "Number Of Persons Undergoing Training", with: @udp_jointly_funded3.Number_of_Persons_Undergoing_Training
    click_on "Update Udp jointly funded3"

    assert_text "Udp jointly funded3 was successfully updated"
    click_on "Back"
  end

  test "destroying a Udp jointly funded3" do
    visit udp_jointly_funded3s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Udp jointly funded3 was successfully destroyed"
  end
end
