require "application_system_test_case"

class SpreadsheetsTest < ApplicationSystemTestCase
  setup do
    @spreadsheet = spreadsheets(:one)
  end

  test "visiting the index" do
    visit spreadsheets_url
    assert_selector "h1", text: "Spreadsheets"
  end

  test "creating a Spreadsheet" do
    visit spreadsheets_url
    click_on "New Spreadsheet"

    fill_in "Date", with: @spreadsheet.date
    fill_in "Number", with: @spreadsheet.number
    fill_in "State", with: @spreadsheet.state
    fill_in "Tapagar", with: @spreadsheet.tapagar
    fill_in "Tgastog", with: @spreadsheet.tgastog
    fill_in "Tneto", with: @spreadsheet.tneto
    click_on "Create Spreadsheet"

    assert_text "Spreadsheet was successfully created"
    click_on "Back"
  end

  test "updating a Spreadsheet" do
    visit spreadsheets_url
    click_on "Edit", match: :first

    fill_in "Date", with: @spreadsheet.date
    fill_in "Number", with: @spreadsheet.number
    fill_in "State", with: @spreadsheet.state
    fill_in "Tapagar", with: @spreadsheet.tapagar
    fill_in "Tgastog", with: @spreadsheet.tgastog
    fill_in "Tneto", with: @spreadsheet.tneto
    click_on "Update Spreadsheet"

    assert_text "Spreadsheet was successfully updated"
    click_on "Back"
  end

  test "destroying a Spreadsheet" do
    visit spreadsheets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Spreadsheet was successfully destroyed"
  end
end
