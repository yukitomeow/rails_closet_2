require "test_helper"

class ItemOrganizingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @item_organizing = item_organizings(:one)
  end

  test "should get index" do
    get item_organizings_url
    assert_response :success
  end

  test "should get new" do
    get new_item_organizing_url
    assert_response :success
  end

  test "should create item_organizing" do
    assert_difference('ItemOrganizing.count') do
      post item_organizings_url, params: { item_organizing: { color: @item_organizing.color, item: @item_organizing.item, season: @item_organizing.season } }
    end

    assert_redirected_to item_organizing_url(ItemOrganizing.last)
  end

  test "should show item_organizing" do
    get item_organizing_url(@item_organizing)
    assert_response :success
  end

  test "should get edit" do
    get edit_item_organizing_url(@item_organizing)
    assert_response :success
  end

  test "should update item_organizing" do
    patch item_organizing_url(@item_organizing), params: { item_organizing: { color: @item_organizing.color, item: @item_organizing.item, season: @item_organizing.season } }
    assert_redirected_to item_organizing_url(@item_organizing)
  end

  test "should destroy item_organizing" do
    assert_difference('ItemOrganizing.count', -1) do
      delete item_organizing_url(@item_organizing)
    end

    assert_redirected_to item_organizings_url
  end
end
