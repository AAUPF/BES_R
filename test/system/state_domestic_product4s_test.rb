require "application_system_test_case"

class StateDomesticProduct4sTest < ApplicationSystemTestCase
  setup do
    @state_domestic_product4 = state_domestic_product4s(:one)
  end

  test "visiting the index" do
    visit state_domestic_product4s_url
    assert_selector "h1", text: "State Domestic Product4s"
  end

  test "creating a State domestic product4" do
    visit state_domestic_product4s_url
    click_on "New State Domestic Product4"

    fill_in "Factor Cost", with: @state_domestic_product4.Factor_Cost
    fill_in "Gsdp", with: @state_domestic_product4.GSDP
    fill_in "Nsdp", with: @state_domestic_product4.NSDP
    fill_in "Per Capita Gsdp", with: @state_domestic_product4.Per_Capita_GSDP
    fill_in "Reference", with: @state_domestic_product4.Reference
    fill_in "Year", with: @state_domestic_product4.Year
    click_on "Create State domestic product4"

    assert_text "State domestic product4 was successfully created"
    click_on "Back"
  end

  test "updating a State domestic product4" do
    visit state_domestic_product4s_url
    click_on "Edit", match: :first

    fill_in "Factor Cost", with: @state_domestic_product4.Factor_Cost
    fill_in "Gsdp", with: @state_domestic_product4.GSDP
    fill_in "Nsdp", with: @state_domestic_product4.NSDP
    fill_in "Per Capita Gsdp", with: @state_domestic_product4.Per_Capita_GSDP
    fill_in "Reference", with: @state_domestic_product4.Reference
    fill_in "Year", with: @state_domestic_product4.Year
    click_on "Update State domestic product4"

    assert_text "State domestic product4 was successfully updated"
    click_on "Back"
  end

  test "destroying a State domestic product4" do
    visit state_domestic_product4s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "State domestic product4 was successfully destroyed"
  end
end
