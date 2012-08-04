class StudentRecord < ActiveRecord::Base
  attr_accessible :classDate, :note, :personalAttitude, :preparation, :present, :student_student_id
  has_one :group_student

  def name
    Student.find(student_student_id).name
  end

end
