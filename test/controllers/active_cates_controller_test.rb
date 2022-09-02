require 'test_helper'

class ActiveCatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @active_cate = active_cates(:one)
  end

  test "should get index" do
    get active_cates_url
    assert_response :success
  end

  test "should get new" do
    get new_active_cate_url
    assert_response :success
  end

  test "should create active_cate" do
    assert_difference('ActiveCate.count') do
      post active_cates_url, params: { active_cate: { active_id: @active_cate.active_id, name: @active_cate.name } }
    end

    assert_redirected_to active_cate_url(ActiveCate.last)
  end

  test "should show active_cate" do
    get active_cate_url(@active_cate)
    assert_response :success
  end

  test "should get edit" do
    get edit_active_cate_url(@active_cate)
    assert_response :success
  end

  test "should update active_cate" do
    patch active_cate_url(@active_cate), params: { active_cate: { active_id: @active_cate.active_id, name: @active_cate.name } }
    assert_redirected_to active_cate_url(@active_cate)
  end

  test "should destroy active_cate" do
    assert_difference('ActiveCate.count', -1) do
      delete active_cate_url(@active_cate)
    end

    assert_redirected_to active_cates_url
  end
end
