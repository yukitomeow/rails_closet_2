require "application_system_test_case"

class ItemOrganizingsTest < ApplicationSystemTestCase
  setup do
    @item_organizing = item_organizings(:one)
  end

  test "visiting the index" do
    visit item_organizings_url
    assert_selector "h1", text: "Item Organizings"
  end

  test "creating a Item organizing" do
    visit item_organizings_url
    click_on "New Item Organizing"

    fill_in "Color", with: @item_organizing.color
    fill_in "Item", with: @item_organizing.item
    fill_in "Season", with: @item_organizing.season
    click_on "Create Item organizing"

    assert_text "Item organizing was successfully created"
    click_on "Back"
  end

  test "updating a Item organizing" do
    visit item_organizings_url
    click_on "Edit", match: :first

    fill_in "Color", with: @item_organizing.color
    fill_in "Item", with: @item_organizing.item
    fill_in "Season", with: @item_organizing.season
    click_on "Update Item organizing"

    assert_text "Item organizing was successfully updated"
    click_on "Back"
  end

  test "destroying a Item organizing" do
    visit item_organizings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Item organizing was successfully destroyed"
  end
end
