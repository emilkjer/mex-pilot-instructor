class CreateStudentRecords < ActiveRecord::Migration
  def change
    create_table :student_records do |t|
      t.boolean :present
      t.integer :preparation
      t.integer :personalAttitude
      t.string :note
      t.integer :student_student_id
      t.datetime :classDate

      t.timestamps
    end
  end
end
