class AddGroupRecordToStudentRecord < ActiveRecord::Migration
  def change
    add_column :student_records, :group_record_id, :integer
  end
end
