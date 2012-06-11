class CreateGroupStudents < ActiveRecord::Migration
  def change
    create_table :group_students do |t|
      t.integer :group_id
      t.integer :student_id

      t.timestamps
    end
  end
end
