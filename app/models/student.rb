class Student < ActiveRecord::Base
  attr_accessible :instructor, :name
  has_many :group_students
  has_many :groups, :through => :group_students
end
