require "application_system_test_case"

class Prof2sTest < ApplicationSystemTestCase
  setup do
    @prof2 = prof2s(:one)
  end

  test "visiting the index" do
    visit prof2s_url
    assert_selector "h1", text: "Prof2s"
  end

  test "creating a Prof2" do
    visit prof2s_url
    click_on "New Prof2"

    fill_in "Atype", with: @prof2.atype
    fill_in "Name", with: @prof2.name
    fill_in "User", with: @prof2.user_id
    click_on "Create Prof2"

    assert_text "Prof2 was successfully created"
    click_on "Back"
  end

  test "updating a Prof2" do
    visit prof2s_url
    click_on "Edit", match: :first

    fill_in "Atype", with: @prof2.atype
    fill_in "Name", with: @prof2.name
    fill_in "User", with: @prof2.user_id
    click_on "Update Prof2"

    assert_text "Prof2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Prof2" do
    visit prof2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Prof2 was successfully destroyed"
  end
end
