require "application_system_test_case"

class ProfsTest < ApplicationSystemTestCase
  setup do
    @prof = profs(:one)
  end

  test "visiting the index" do
    visit profs_url
    assert_selector "h1", text: "Profs"
  end

  test "creating a Prof" do
    visit profs_url
    click_on "New Prof"

    fill_in "Name", with: @prof.name
    fill_in "Type", with: @prof.type
    fill_in "User", with: @prof.user_id
    click_on "Create Prof"

    assert_text "Prof was successfully created"
    click_on "Back"
  end

  test "updating a Prof" do
    visit profs_url
    click_on "Edit", match: :first

    fill_in "Name", with: @prof.name
    fill_in "Type", with: @prof.type
    fill_in "User", with: @prof.user_id
    click_on "Update Prof"

    assert_text "Prof was successfully updated"
    click_on "Back"
  end

  test "destroying a Prof" do
    visit profs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Prof was successfully destroyed"
  end
end
