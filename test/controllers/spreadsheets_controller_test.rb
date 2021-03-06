require 'test_helper'

class SpreadsheetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @spreadsheet = spreadsheets(:one)
  end

  test "should get index" do
    get spreadsheets_url
    assert_response :success
  end

  test "should get new" do
    get new_spreadsheet_url
    assert_response :success
  end

  test "should create spreadsheet" do
    assert_difference('Spreadsheet.count') do
      post spreadsheets_url, params: { spreadsheet: { date: @spreadsheet.date, number: @spreadsheet.number, state: @spreadsheet.state, tapagar: @spreadsheet.tapagar, tgastog: @spreadsheet.tgastog, tneto: @spreadsheet.tneto } }
    end

    assert_redirected_to spreadsheet_url(Spreadsheet.last)
  end

  test "should show spreadsheet" do
    get spreadsheet_url(@spreadsheet)
    assert_response :success
  end

  test "should get edit" do
    get edit_spreadsheet_url(@spreadsheet)
    assert_response :success
  end

  test "should update spreadsheet" do
    patch spreadsheet_url(@spreadsheet), params: { spreadsheet: { date: @spreadsheet.date, number: @spreadsheet.number, state: @spreadsheet.state, tapagar: @spreadsheet.tapagar, tgastog: @spreadsheet.tgastog, tneto: @spreadsheet.tneto } }
    assert_redirected_to spreadsheet_url(@spreadsheet)
  end

  test "should destroy spreadsheet" do
    assert_difference('Spreadsheet.count', -1) do
      delete spreadsheet_url(@spreadsheet)
    end

    assert_redirected_to spreadsheets_url
  end
end
