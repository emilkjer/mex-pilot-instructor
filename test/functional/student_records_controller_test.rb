require 'test_helper'

class StudentRecordsControllerTest < ActionController::TestCase
  setup do
    @student_record = student_records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:student_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student_record" do
    assert_difference('StudentRecord.count') do
      post :create, student_record: { classDate: @student_record.classDate, note: @student_record.note, personalAttitude: @student_record.personalAttitude, preparation: @student_record.preparation, present: @student_record.present, student_student_id: @student_record.student_student_id }
    end

    assert_redirected_to student_record_path(assigns(:student_record))
  end

  test "should show student_record" do
    get :show, id: @student_record
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student_record
    assert_response :success
  end

  test "should update student_record" do
    put :update, id: @student_record, student_record: { classDate: @student_record.classDate, note: @student_record.note, personalAttitude: @student_record.personalAttitude, preparation: @student_record.preparation, present: @student_record.present, student_student_id: @student_record.student_student_id }
    assert_redirected_to student_record_path(assigns(:student_record))
  end

  test "should destroy student_record" do
    assert_difference('StudentRecord.count', -1) do
      delete :destroy, id: @student_record
    end

    assert_redirected_to student_records_path
  end
end
