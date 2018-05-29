require "application_system_test_case"

class AdrressesTest < ApplicationSystemTestCase
  setup do
    @adrress = adrresses(:one)
  end

  test "visiting the index" do
    visit adrresses_url
    assert_selector "h1", text: "Adrresses"
  end

  test "creating a Adrress" do
    visit adrresses_url
    click_on "New Adrress"

    fill_in "City", with: @adrress.city
    fill_in "Contact", with: @adrress.contact_id
    fill_in "State", with: @adrress.state
    fill_in "Street", with: @adrress.street
    click_on "Create Adrress"

    assert_text "Adrress was successfully created"
    click_on "Back"
  end

  test "updating a Adrress" do
    visit adrresses_url
    click_on "Edit", match: :first

    fill_in "City", with: @adrress.city
    fill_in "Contact", with: @adrress.contact_id
    fill_in "State", with: @adrress.state
    fill_in "Street", with: @adrress.street
    click_on "Update Adrress"

    assert_text "Adrress was successfully updated"
    click_on "Back"
  end

  test "destroying a Adrress" do
    visit adrresses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Adrress was successfully destroyed"
  end
end
