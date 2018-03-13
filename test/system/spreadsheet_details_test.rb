require "application_system_test_case"

class SpreadsheetDetailsTest < ApplicationSystemTestCase
  setup do
    @spreadsheet_detail = spreadsheet_details(:one)
  end

  test "visiting the index" do
    visit spreadsheet_details_url
    assert_selector "h1", text: "Spreadsheet Details"
  end

  test "creating a Spreadsheet detail" do
    visit spreadsheet_details_url
    click_on "New Spreadsheet Detail"

    fill_in "Choferv", with: @spreadsheet_detail.choferv
    fill_in "Gastov", with: @spreadsheet_detail.gastov
    fill_in "Netov", with: @spreadsheet_detail.netov
    fill_in "Spreadsheet", with: @spreadsheet_detail.spreadsheet_id
    fill_in "Totalv", with: @spreadsheet_detail.totalv
    click_on "Create Spreadsheet detail"

    assert_text "Spreadsheet detail was successfully created"
    click_on "Back"
  end

  test "updating a Spreadsheet detail" do
    visit spreadsheet_details_url
    click_on "Edit", match: :first

    fill_in "Choferv", with: @spreadsheet_detail.choferv
    fill_in "Gastov", with: @spreadsheet_detail.gastov
    fill_in "Netov", with: @spreadsheet_detail.netov
    fill_in "Spreadsheet", with: @spreadsheet_detail.spreadsheet_id
    fill_in "Totalv", with: @spreadsheet_detail.totalv
    click_on "Update Spreadsheet detail"

    assert_text "Spreadsheet detail was successfully updated"
    click_on "Back"
  end

  test "destroying a Spreadsheet detail" do
    visit spreadsheet_details_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Spreadsheet detail was successfully destroyed"
  end
end
