class GroupRecord < ActiveRecord::Base
  attr_accessible :student_records, :group_id
  has_many :student_records
  has_many :students, :through => :student_records
end
