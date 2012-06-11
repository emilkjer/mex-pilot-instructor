require 'test_helper'

class GroupRecordsControllerTest < ActionController::TestCase
  setup do
    @group_record = group_records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:group_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create group_record" do
    assert_difference('GroupRecord.count') do
      post :create, group_record: {  }
    end

    assert_redirected_to group_record_path(assigns(:group_record))
  end

  test "should show group_record" do
    get :show, id: @group_record
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @group_record
    assert_response :success
  end

  test "should update group_record" do
    put :update, id: @group_record, group_record: {  }
    assert_redirected_to group_record_path(assigns(:group_record))
  end

  test "should destroy group_record" do
    assert_difference('GroupRecord.count', -1) do
      delete :destroy, id: @group_record
    end

    assert_redirected_to group_records_path
  end
end
