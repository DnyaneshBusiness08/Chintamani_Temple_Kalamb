require "application_system_test_case"

class CashesTest < ApplicationSystemTestCase
  setup do
    @cash = cashes(:one)
  end

  test "visiting the index" do
    visit cashes_url
    assert_selector "h1", text: "Cashes"
  end

  test "creating a Cash" do
    visit cashes_url
    click_on "New Cash"

    fill_in "Address", with: @cash.address
    fill_in "Amount", with: @cash.amount
    fill_in "Contact", with: @cash.contact
    fill_in "Date", with: @cash.date
    fill_in "Name", with: @cash.name
    fill_in "Receiver", with: @cash.receiver
    click_on "Create Cash"

    assert_text "Cash was successfully created"
    click_on "Back"
  end

  test "updating a Cash" do
    visit cashes_url
    click_on "Edit", match: :first

    fill_in "Address", with: @cash.address
    fill_in "Amount", with: @cash.amount
    fill_in "Contact", with: @cash.contact
    fill_in "Date", with: @cash.date
    fill_in "Name", with: @cash.name
    fill_in "Receiver", with: @cash.receiver
    click_on "Update Cash"

    assert_text "Cash was successfully updated"
    click_on "Back"
  end

  test "destroying a Cash" do
    visit cashes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cash was successfully destroyed"
  end
end
