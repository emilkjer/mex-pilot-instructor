class GroupRecord < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :student_records
  has_many :students, :through => :student_records
end
