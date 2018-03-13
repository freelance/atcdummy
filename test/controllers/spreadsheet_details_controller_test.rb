require 'test_helper'

class SpreadsheetDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @spreadsheet_detail = spreadsheet_details(:one)
  end

  test "should get index" do
    get spreadsheet_details_url
    assert_response :success
  end

  test "should get new" do
    get new_spreadsheet_detail_url
    assert_response :success
  end

  test "should create spreadsheet_detail" do
    assert_difference('SpreadsheetDetail.count') do
      post spreadsheet_details_url, params: { spreadsheet_detail: { choferv: @spreadsheet_detail.choferv, gastov: @spreadsheet_detail.gastov, netov: @spreadsheet_detail.netov, spreadsheet_id: @spreadsheet_detail.spreadsheet_id, totalv: @spreadsheet_detail.totalv } }
    end

    assert_redirected_to spreadsheet_detail_url(SpreadsheetDetail.last)
  end

  test "should show spreadsheet_detail" do
    get spreadsheet_detail_url(@spreadsheet_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_spreadsheet_detail_url(@spreadsheet_detail)
    assert_response :success
  end

  test "should update spreadsheet_detail" do
    patch spreadsheet_detail_url(@spreadsheet_detail), params: { spreadsheet_detail: { choferv: @spreadsheet_detail.choferv, gastov: @spreadsheet_detail.gastov, netov: @spreadsheet_detail.netov, spreadsheet_id: @spreadsheet_detail.spreadsheet_id, totalv: @spreadsheet_detail.totalv } }
    assert_redirected_to spreadsheet_detail_url(@spreadsheet_detail)
  end

  test "should destroy spreadsheet_detail" do
    assert_difference('SpreadsheetDetail.count', -1) do
      delete spreadsheet_detail_url(@spreadsheet_detail)
    end

    assert_redirected_to spreadsheet_details_url
  end
end
