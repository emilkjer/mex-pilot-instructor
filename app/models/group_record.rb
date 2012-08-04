class GroupRecord < ActiveRecord::Base
  attr_accessible :student_records, :group_id
  has_many :student_records
  has_many :students, :through => :student_records

  def self.get_group_students(group_id)
    self.where(:group_id => group_id).last.student_records
  end
end
