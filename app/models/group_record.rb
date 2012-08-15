class GroupRecord < ActiveRecord::Base
  attr_accessible :student_records, :group_id, :reg_date
  has_many :student_records
  has_many :students, :through => :student_records

  def self.get_group_students(group_id)
    self.where(:group_id => group_id).last.student_records
  end

  def self.get_group_student_stats(group_id)
    group = self.where(:group_id => group_id)
    group.each do |g|
      students = g.student_records
      students.each do |s|

      end
    end
  end
end
