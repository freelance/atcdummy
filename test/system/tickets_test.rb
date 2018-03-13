require "application_system_test_case"

class TicketsTest < ApplicationSystemTestCase
  setup do
    @ticket = tickets(:one)
  end

  test "visiting the index" do
    visit tickets_url
    assert_selector "h1", text: "Tickets"
  end

  test "creating a Ticket" do
    visit tickets_url
    click_on "New Ticket"

    fill_in "Choferv", with: @ticket.choferv
    fill_in "Code", with: @ticket.code
    fill_in "Gastov", with: @ticket.gastov
    fill_in "License", with: @ticket.license_id
    fill_in "Netov", with: @ticket.netov
    fill_in "Totalvt", with: @ticket.totalvt
    click_on "Create Ticket"

    assert_text "Ticket was successfully created"
    click_on "Back"
  end

  test "updating a Ticket" do
    visit tickets_url
    click_on "Edit", match: :first

    fill_in "Choferv", with: @ticket.choferv
    fill_in "Code", with: @ticket.code
    fill_in "Gastov", with: @ticket.gastov
    fill_in "License", with: @ticket.license_id
    fill_in "Netov", with: @ticket.netov
    fill_in "Totalvt", with: @ticket.totalvt
    click_on "Update Ticket"

    assert_text "Ticket was successfully updated"
    click_on "Back"
  end

  test "destroying a Ticket" do
    visit tickets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ticket was successfully destroyed"
  end
end
