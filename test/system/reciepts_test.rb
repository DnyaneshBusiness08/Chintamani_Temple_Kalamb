require "application_system_test_case"

class RecieptsTest < ApplicationSystemTestCase
  setup do
    @reciept = reciepts(:one)
  end

  test "visiting the index" do
    visit reciepts_url
    assert_selector "h1", text: "Reciepts"
  end

  test "creating a Reciept" do
    visit reciepts_url
    click_on "New Reciept"

    click_on "Create Reciept"

    assert_text "Reciept was successfully created"
    click_on "Back"
  end

  test "updating a Reciept" do
    visit reciepts_url
    click_on "Edit", match: :first

    click_on "Update Reciept"

    assert_text "Reciept was successfully updated"
    click_on "Back"
  end

  test "destroying a Reciept" do
    visit reciepts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reciept was successfully destroyed"
  end
end
