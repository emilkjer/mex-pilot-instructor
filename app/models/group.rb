class Group < ActiveRecord::Base
  has_many :groupStudents
  has_many :students, :through => :groupStudents
end