class Group < ActiveRecord::Base
  attr_accessible :instructor_id, :name, :student_ids
  has_many :group_students
  has_many :students, :through => :group_students
end
